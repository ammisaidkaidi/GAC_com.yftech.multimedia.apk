.class public Landroid/gesture/OrientedBoundingBox;
.super Ljava/lang/Object;
.source "OrientedBoundingBox.java"


# instance fields
.field public final centerX:F

.field public final centerY:F

.field public final height:F

.field public final orientation:F

.field public final squareness:F

.field public final width:F


# direct methods
.method constructor <init>(FFFFF)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    .line 38
    iput p4, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    .line 39
    iput p5, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    .line 40
    iput p2, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    .line 41
    iput p3, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    div-float/2addr p4, p5

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, p4, p1

    if-lez p2, :cond_0

    div-float/2addr p1, p4

    .line 44
    iput p1, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    goto :goto_0

    .line 46
    :cond_0
    iput p4, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    :goto_0
    return-void
.end method


# virtual methods
.method public toPath()Landroid/graphics/Path;
    .locals 8

    .line 56
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x2

    .line 57
    new-array v1, v1, [F

    .line 58
    iget v2, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    .line 59
    iget v2, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    div-float/2addr v2, v3

    const/4 v5, 0x1

    aput v2, v1, v5

    .line 60
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 61
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 62
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    iget v7, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 63
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 64
    aget v6, v1, v4

    aget v7, v1, v5

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 66
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    neg-float v6, v6

    div-float/2addr v6, v3

    aput v6, v1, v4

    .line 67
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    neg-float v6, v6

    div-float/2addr v6, v3

    aput v6, v1, v5

    .line 68
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 69
    aget v6, v1, v4

    aget v7, v1, v5

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    div-float/2addr v6, v3

    aput v6, v1, v4

    .line 72
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    neg-float v6, v6

    div-float/2addr v6, v3

    aput v6, v1, v5

    .line 73
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 74
    aget v6, v1, v4

    aget v7, v1, v5

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    div-float/2addr v6, v3

    aput v6, v1, v4

    .line 77
    iget p0, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    div-float/2addr p0, v3

    aput p0, v1, v5

    .line 78
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 79
    aget p0, v1, v4

    aget v1, v1, v5

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method
