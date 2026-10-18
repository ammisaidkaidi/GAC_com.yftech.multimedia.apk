.class final Landroid/hardware/LegacySensorManager$LmsFilter;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LmsFilter"
.end annotation


# static fields
.field private static final COUNT:I = 0xc

.field private static final PREDICTION_RATIO:F = 0.33333334f

.field private static final PREDICTION_TIME:F = 0.08f

.field private static final SENSORS_RATE_MS:I = 0x14


# instance fields
.field private mIndex:I

.field private mT:[J

.field private mV:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    .line 375
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    .line 376
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    const/16 v0, 0xc

    .line 380
    iput v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    return-void
.end method


# virtual methods
.method public filter(JF)F
    .locals 22

    move-object/from16 v0, p0

    .line 386
    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aget v4, v4, v5

    sub-float v5, p3, v4

    const/high16 v6, 0x43340000    # 180.0f

    cmpl-float v5, v5, v6

    const/high16 v7, 0x43b40000    # 360.0f

    if-lez v5, :cond_0

    sub-float v3, p3, v7

    goto :goto_0

    :cond_0
    sub-float v4, v4, p3

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    add-float v3, p3, v7

    goto :goto_0

    :cond_1
    move/from16 v3, p3

    .line 396
    :goto_0
    iget v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 397
    iget v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    const/16 v5, 0x18

    const/16 v6, 0xc

    if-lt v4, v5, :cond_2

    .line 398
    iput v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 400
    :cond_2
    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput v3, v4, v5

    .line 401
    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    iget v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput-wide p1, v4, v5

    .line 402
    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    sub-int/2addr v5, v6

    aput v3, v4, v5

    .line 403
    iget-object v3, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    iget v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    sub-int/2addr v4, v6

    aput-wide p1, v3, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v8, v6

    move v9, v8

    move v10, v9

    :goto_1
    const/16 v11, 0xb

    if-ge v3, v11, :cond_3

    .line 411
    iget v11, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v3

    .line 412
    iget-object v12, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    aget v12, v12, v11

    .line 413
    iget-object v13, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v14, v13, v11

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    iget-object v13, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    add-int/lit8 v18, v11, 0x1

    aget-wide v19, v13, v18

    div-long v19, v19, v16

    add-long v14, v14, v19

    sub-long v14, v14, p1

    long-to-float v13, v14

    const v14, 0x3089705f    # 1.0E-9f

    mul-float/2addr v13, v14

    .line 414
    iget-object v15, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v16, v15, v11

    iget-object v11, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v18, v11, v18

    move/from16 v21, v8

    sub-long v7, v16, v18

    long-to-float v7, v7

    mul-float/2addr v7, v14

    mul-float/2addr v7, v7

    mul-float v8, v12, v7

    add-float/2addr v5, v8

    mul-float v8, v13, v7

    mul-float/2addr v13, v8

    add-float/2addr v6, v13

    add-float v11, v21, v8

    mul-float/2addr v12, v8

    add-float/2addr v9, v12

    add-float/2addr v10, v7

    add-int/lit8 v3, v3, 0x1

    move v8, v11

    const/high16 v7, 0x43b40000    # 360.0f

    goto :goto_1

    :cond_3
    move/from16 v21, v8

    mul-float v0, v5, v6

    mul-float v8, v21, v9

    add-float/2addr v0, v8

    mul-float/2addr v6, v10

    mul-float v8, v21, v21

    add-float/2addr v6, v8

    div-float/2addr v0, v6

    mul-float/2addr v10, v0

    sub-float/2addr v10, v5

    div-float v10, v10, v21

    const v1, 0x3da3d70a    # 0.08f

    mul-float/2addr v10, v1

    add-float/2addr v0, v10

    const v1, 0x3b360b61

    mul-float/2addr v0, v1

    cmpl-float v1, v0, v4

    if-ltz v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    neg-float v1, v0

    :goto_2
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_5

    add-float/2addr v2, v0

    float-to-double v1, v2

    .line 429
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v3

    :cond_5
    cmpg-float v1, v0, v4

    if-gez v1, :cond_6

    add-float/2addr v0, v3

    :cond_6
    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    return v0
.end method
