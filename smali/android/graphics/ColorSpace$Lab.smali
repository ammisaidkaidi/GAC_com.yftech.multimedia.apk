.class final Landroid/graphics/ColorSpace$Lab;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Lab"
.end annotation


# static fields
.field private static final A:F = 0.008856452f

.field private static final B:F = 7.787037f

.field private static final C:F = 0.13793103f

.field private static final D:F = 0.20689656f


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1838
    sget-object v0, Landroid/graphics/ColorSpace$Model;->LAB:Landroid/graphics/ColorSpace$Model;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 1831
    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Lab;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public fromXyz([F)[F
    .locals 13

    const/4 p0, 0x0

    .line 1878
    aget v0, p1, p0

    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v1

    aget v1, v1, p0

    div-float/2addr v0, v1

    const/4 v1, 0x1

    .line 1879
    aget v2, p1, v1

    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v3

    aget v3, v3, v1

    div-float/2addr v2, v3

    const/4 v3, 0x2

    .line 1880
    aget v4, p1, v3

    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v5

    aget v5, v5, v3

    div-float/2addr v4, v5

    const v5, 0x3c111aa7

    cmpl-float v6, v0, v5

    const v7, 0x3e0d3dcb

    const v8, 0x40f92f68

    const-wide v9, 0x3fd5555555555555L    # 0.3333333333333333

    if-lez v6, :cond_0

    float-to-double v11, v0

    .line 1882
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v0, v11

    goto :goto_0

    :cond_0
    mul-float/2addr v0, v8

    add-float/2addr v0, v7

    :goto_0
    cmpl-float v6, v2, v5

    if-lez v6, :cond_1

    float-to-double v11, v2

    .line 1883
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v2, v11

    goto :goto_1

    :cond_1
    mul-float/2addr v2, v8

    add-float/2addr v2, v7

    :goto_1
    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    float-to-double v4, v4

    .line 1884
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    goto :goto_2

    :cond_2
    mul-float/2addr v4, v8

    add-float/2addr v4, v7

    :goto_2
    const/high16 v5, 0x42e80000    # 116.0f

    mul-float/2addr v5, v2

    const/high16 v6, 0x41800000    # 16.0f

    sub-float/2addr v5, v6

    const/high16 v6, 0x43fa0000    # 500.0f

    sub-float/2addr v0, v2

    mul-float/2addr v0, v6

    const/high16 v6, 0x43480000    # 200.0f

    sub-float/2addr v2, v4

    mul-float/2addr v2, v6

    const/4 v4, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    .line 1890
    invoke-static {v5, v4, v6}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v4

    aput v4, p1, p0

    const/high16 p0, 0x43000000    # 128.0f

    const/high16 v4, -0x3d000000    # -128.0f

    .line 1891
    invoke-static {v0, v4, p0}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v0

    aput v0, p1, v1

    .line 1892
    invoke-static {v2, v4, p0}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result p0

    aput p0, p1, v3

    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 0

    if-nez p1, :cond_0

    const/high16 p0, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x43000000    # 128.0f

    :goto_0
    return p0
.end method

.method public getMinValue(I)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x3d000000    # -128.0f

    :goto_0
    return p0
.end method

.method public isWideGamut()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toXyz([F)[F
    .locals 9

    const/4 p0, 0x0

    .line 1858
    aget v0, p1, p0

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v0, v1, v2}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v0

    aput v0, p1, p0

    const/4 v0, 0x1

    .line 1859
    aget v1, p1, v0

    const/high16 v2, 0x43000000    # 128.0f

    const/high16 v3, -0x3d000000    # -128.0f

    invoke-static {v1, v3, v2}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v1

    aput v1, p1, v0

    const/4 v1, 0x2

    .line 1860
    aget v4, p1, v1

    invoke-static {v4, v3, v2}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v2

    aput v2, p1, v1

    .line 1862
    aget v2, p1, p0

    const/high16 v3, 0x41800000    # 16.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x42e80000    # 116.0f

    div-float/2addr v2, v3

    .line 1863
    aget v3, p1, v0

    const v4, 0x3b03126f    # 0.002f

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 1864
    aget v4, p1, v1

    const v5, 0x3ba3d70a    # 0.005f

    mul-float/2addr v4, v5

    sub-float v4, v2, v4

    const v5, 0x3e53dcb1

    cmpl-float v6, v3, v5

    const v7, 0x3e0d3dcb

    const v8, 0x3e038027

    if-lez v6, :cond_0

    mul-float v6, v3, v3

    mul-float/2addr v6, v3

    goto :goto_0

    :cond_0
    sub-float/2addr v3, v7

    mul-float v6, v3, v8

    :goto_0
    cmpl-float v3, v2, v5

    if-lez v3, :cond_1

    mul-float v3, v2, v2

    mul-float/2addr v3, v2

    goto :goto_1

    :cond_1
    sub-float/2addr v2, v7

    mul-float v3, v2, v8

    :goto_1
    cmpl-float v2, v4, v5

    if-lez v2, :cond_2

    mul-float v2, v4, v4

    mul-float/2addr v2, v4

    goto :goto_2

    :cond_2
    sub-float/2addr v4, v7

    mul-float v2, v4, v8

    .line 1869
    :goto_2
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v4

    aget v4, v4, p0

    mul-float/2addr v6, v4

    aput v6, p1, p0

    .line 1870
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object p0

    aget p0, p0, v0

    mul-float/2addr v3, p0

    aput v3, p1, v0

    .line 1871
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object p0

    aget p0, p0, v1

    mul-float/2addr v2, p0

    aput v2, p1, v1

    return-object p1
.end method
