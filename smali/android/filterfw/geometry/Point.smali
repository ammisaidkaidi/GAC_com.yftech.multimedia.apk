.class public Landroid/filterfw/geometry/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 35
    iput p2, p0, Landroid/filterfw/geometry/Point;->y:F

    return-void
.end method


# virtual methods
.method public IsInUnitRange()Z
    .locals 3

    .line 44
    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/filterfw/geometry/Point;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget p0, p0, Landroid/filterfw/geometry/Point;->y:F

    cmpg-float p0, p0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public distanceTo(Landroid/filterfw/geometry/Point;)F
    .locals 0

    .line 77
    invoke-virtual {p1, p0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object p0

    invoke-virtual {p0}, Landroid/filterfw/geometry/Point;->length()F

    move-result p0

    return p0
.end method

.method public length()F
    .locals 4

    .line 73
    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    float-to-double v0, v0

    iget p0, p0, Landroid/filterfw/geometry/Point;->y:F

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public minus(FF)Landroid/filterfw/geometry/Point;
    .locals 2

    .line 57
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    sub-float/2addr v1, p1

    iget p0, p0, Landroid/filterfw/geometry/Point;->y:F

    sub-float/2addr p0, p2

    invoke-direct {v0, v1, p0}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;
    .locals 1

    .line 61
    iget v0, p1, Landroid/filterfw/geometry/Point;->x:F

    iget p1, p1, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {p0, v0, p1}, Landroid/filterfw/geometry/Point;->minus(FF)Landroid/filterfw/geometry/Point;

    move-result-object p0

    return-object p0
.end method

.method public mult(FF)Landroid/filterfw/geometry/Point;
    .locals 2

    .line 69
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v1, p1

    iget p0, p0, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr p0, p2

    invoke-direct {v0, v1, p0}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public normalize()Landroid/filterfw/geometry/Point;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 85
    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    move-result-object p0

    return-object p0
.end method

.method public plus(FF)Landroid/filterfw/geometry/Point;
    .locals 2

    .line 49
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    add-float/2addr v1, p1

    iget p0, p0, Landroid/filterfw/geometry/Point;->y:F

    add-float/2addr p0, p2

    invoke-direct {v0, v1, p0}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;
    .locals 1

    .line 53
    iget v0, p1, Landroid/filterfw/geometry/Point;->x:F

    iget p1, p1, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {p0, v0, p1}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object p0

    return-object p0
.end method

.method public rotated(F)Landroid/filterfw/geometry/Point;
    .locals 9

    .line 101
    new-instance v0, Landroid/filterfw/geometry/Point;

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    iget p1, p0, Landroid/filterfw/geometry/Point;->x:F

    float-to-double v5, p1

    mul-double/2addr v3, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    iget p1, p0, Landroid/filterfw/geometry/Point;->y:F

    float-to-double v7, p1

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-float p1, v3

    .line 102
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget v5, p0, Landroid/filterfw/geometry/Point;->x:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    iget p0, p0, Landroid/filterfw/geometry/Point;->y:F

    float-to-double v5, p0

    mul-double/2addr v1, v5

    add-double/2addr v3, v1

    double-to-float p0, v3

    invoke-direct {v0, p1, p0}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public rotated90(I)Landroid/filterfw/geometry/Point;
    .locals 3

    .line 89
    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 90
    iget p0, p0, Landroid/filterfw/geometry/Point;->y:F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    neg-float v0, v0

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    move v0, p0

    move p0, v2

    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Landroid/filterfw/geometry/Point;

    invoke-direct {p1, v0, p0}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object p1
.end method

.method public rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/filterfw/geometry/Point;->rotated(F)Landroid/filterfw/geometry/Point;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object p0

    return-object p0
.end method

.method public scaledTo(F)Landroid/filterfw/geometry/Point;
    .locals 1

    .line 81
    invoke-virtual {p0}, Landroid/filterfw/geometry/Point;->length()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object p0

    return-object p0
.end method

.method public set(FF)V
    .locals 0

    .line 39
    iput p1, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 40
    iput p2, p0, Landroid/filterfw/geometry/Point;->y:F

    return-void
.end method

.method public times(F)Landroid/filterfw/geometry/Point;
    .locals 2

    .line 65
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v1, p1

    iget p0, p0, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
