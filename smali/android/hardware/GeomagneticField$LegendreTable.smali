.class Landroid/hardware/GeomagneticField$LegendreTable;
.super Ljava/lang/Object;
.source "GeomagneticField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/GeomagneticField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegendreTable"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final mP:[[F

.field public final mPDeriv:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 335
    const-class v0, Landroid/hardware/GeomagneticField;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 12

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p2

    .line 356
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    .line 357
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 359
    new-array v2, v1, [[F

    iput-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    .line 360
    new-array v1, v1, [[F

    iput-object v1, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    .line 361
    iget-object v1, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    aput-object v3, v1, v4

    .line 362
    iget-object v1, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    new-array v3, v2, [F

    const/4 v5, 0x0

    aput v5, v3, v4

    aput-object v3, v1, v4

    move v1, v2

    :goto_0
    if-gt v1, p1, :cond_4

    .line 364
    iget-object v3, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v5, v1, 0x1

    new-array v6, v5, [F

    aput-object v6, v3, v1

    .line 365
    iget-object v3, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    new-array v6, v5, [F

    aput-object v6, v3, v1

    move v3, v4

    :goto_1
    if-gt v3, v1, :cond_3

    if-ne v1, v3, :cond_0

    .line 368
    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v6, v6, v1

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v8, v1, -0x1

    aget-object v7, v7, v8

    add-int/lit8 v9, v3, -0x1

    aget v7, v7, v9

    mul-float/2addr v7, v0

    aput v7, v6, v3

    .line 369
    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v6, v6, v1

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v7, v7, v8

    aget v7, v7, v9

    mul-float/2addr v7, p2

    iget-object v10, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v8, v10, v8

    aget v8, v8, v9

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    aput v7, v6, v3

    goto :goto_3

    :cond_0
    if-eq v1, v2, :cond_2

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_1

    goto :goto_2

    :cond_1
    mul-int v7, v6, v6

    mul-int v8, v3, v3

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v9, v8, -0x1

    add-int/lit8 v8, v8, -0x3

    mul-int/2addr v9, v8

    int-to-float v8, v9

    div-float/2addr v7, v8

    .line 379
    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v8, v8, v1

    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v9, v9, v6

    aget v9, v9, v3

    mul-float/2addr v9, p2

    iget-object v10, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v11, v1, -0x2

    aget-object v10, v10, v11

    aget v10, v10, v3

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    aput v9, v8, v3

    .line 380
    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v8, v8, v1

    neg-float v9, v0

    iget-object v10, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v10, v10, v6

    aget v10, v10, v3

    mul-float/2addr v9, v10

    iget-object v10, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v6, v10, v6

    aget v6, v6, v3

    mul-float/2addr v6, p2

    add-float/2addr v9, v6

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v6, v6, v11

    aget v6, v6, v3

    mul-float/2addr v7, v6

    sub-float/2addr v9, v7

    aput v9, v8, v3

    goto :goto_3

    .line 372
    :cond_2
    :goto_2
    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v6, v6, v1

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v8, v1, -0x1

    aget-object v7, v7, v8

    aget v7, v7, v3

    mul-float/2addr v7, p2

    aput v7, v6, v3

    .line 373
    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v6, v6, v1

    neg-float v7, v0

    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v9, v9, v8

    aget v9, v9, v3

    mul-float/2addr v7, v9

    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v8, v9, v8

    aget v8, v8, v3

    mul-float/2addr v8, p2

    add-float/2addr v7, v8

    aput v7, v6, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_3
    move v1, v5

    goto/16 :goto_0

    :cond_4
    return-void
.end method
