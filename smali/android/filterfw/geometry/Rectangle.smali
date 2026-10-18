.class public Landroid/filterfw/geometry/Rectangle;
.super Landroid/filterfw/geometry/Quad;
.source "Rectangle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/filterfw/geometry/Quad;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 3

    .line 32
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, p1, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v1, Landroid/filterfw/geometry/Point;

    add-float/2addr p3, p1

    invoke-direct {v1, p3, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v2, Landroid/filterfw/geometry/Point;

    add-float/2addr p2, p4

    invoke-direct {v2, p1, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance p1, Landroid/filterfw/geometry/Point;

    invoke-direct {p1, p3, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-void
.end method

.method public constructor <init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V
    .locals 3

    .line 39
    iget v0, p2, Landroid/filterfw/geometry/Point;->x:F

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v0

    iget v2, p2, Landroid/filterfw/geometry/Point;->y:F

    .line 41
    invoke-virtual {p1, v1, v2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget v2, p2, Landroid/filterfw/geometry/Point;->x:F

    iget p2, p2, Landroid/filterfw/geometry/Point;->y:F

    .line 42
    invoke-virtual {p1, v2, p2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object p2

    .line 39
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-void
.end method

.method private constructor <init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-void
.end method

.method public static fromCenterVerticalAxis(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Rectangle;
    .locals 4

    .line 61
    iget v0, p2, Landroid/filterfw/geometry/Point;->y:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    const/4 v2, 0x1

    .line 62
    invoke-virtual {p1, v2}, Landroid/filterfw/geometry/Point;->rotated90(I)Landroid/filterfw/geometry/Point;

    move-result-object p1

    iget p2, p2, Landroid/filterfw/geometry/Point;->x:F

    div-float/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    move-result-object p1

    .line 63
    new-instance p2, Landroid/filterfw/geometry/Rectangle;

    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v1

    .line 64
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v2

    .line 65
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v3

    .line 66
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object p0

    invoke-direct {p2, v1, v2, v3, p0}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object p2
.end method

.method public static fromRotatedRect(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Rectangle;
    .locals 7

    .line 46
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    iget v2, p1, Landroid/filterfw/geometry/Point;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    iget v4, p1, Landroid/filterfw/geometry/Point;->y:F

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 47
    new-instance v1, Landroid/filterfw/geometry/Point;

    iget v2, p0, Landroid/filterfw/geometry/Point;->x:F

    iget v4, p1, Landroid/filterfw/geometry/Point;->x:F

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Landroid/filterfw/geometry/Point;->y:F

    iget v5, p1, Landroid/filterfw/geometry/Point;->y:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    invoke-direct {v1, v2, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 48
    new-instance v2, Landroid/filterfw/geometry/Point;

    iget v4, p0, Landroid/filterfw/geometry/Point;->x:F

    iget v5, p1, Landroid/filterfw/geometry/Point;->x:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/filterfw/geometry/Point;->y:F

    iget v6, p1, Landroid/filterfw/geometry/Point;->y:F

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    invoke-direct {v2, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 49
    new-instance v4, Landroid/filterfw/geometry/Point;

    iget v5, p0, Landroid/filterfw/geometry/Point;->x:F

    iget v6, p1, Landroid/filterfw/geometry/Point;->x:F

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    iget v6, p0, Landroid/filterfw/geometry/Point;->y:F

    iget p1, p1, Landroid/filterfw/geometry/Point;->y:F

    div-float/2addr p1, v3

    add-float/2addr v6, p1

    invoke-direct {v4, v5, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 50
    new-instance p1, Landroid/filterfw/geometry/Rectangle;

    invoke-virtual {v0, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    .line 51
    invoke-virtual {v1, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    move-result-object v1

    .line 52
    invoke-virtual {v2, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    move-result-object v2

    .line 53
    invoke-virtual {v4, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object p1
.end method


# virtual methods
.method public center()Landroid/filterfw/geometry/Point;
    .locals 2

    .line 78
    iget-object v0, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    iget-object p0, p0, Landroid/filterfw/geometry/Rectangle;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, p0}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object p0

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()F
    .locals 1

    .line 74
    iget-object v0, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    iget-object p0, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, p0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object p0

    invoke-virtual {p0}, Landroid/filterfw/geometry/Point;->length()F

    move-result p0

    return p0
.end method

.method public getWidth()F
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    iget-object p0, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, p0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object p0

    invoke-virtual {p0}, Landroid/filterfw/geometry/Point;->length()F

    move-result p0

    return p0
.end method

.method public bridge synthetic scaled(F)Landroid/filterfw/geometry/Quad;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Rectangle;->scaled(F)Landroid/filterfw/geometry/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic scaled(FF)Landroid/filterfw/geometry/Quad;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/geometry/Rectangle;->scaled(FF)Landroid/filterfw/geometry/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public scaled(F)Landroid/filterfw/geometry/Rectangle;
    .locals 4

    .line 83
    new-instance v0, Landroid/filterfw/geometry/Rectangle;

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object p0, p0, Landroid/filterfw/geometry/Rectangle;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method

.method public scaled(FF)Landroid/filterfw/geometry/Rectangle;
    .locals 4

    .line 88
    new-instance v0, Landroid/filterfw/geometry/Rectangle;

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object p0, p0, Landroid/filterfw/geometry/Rectangle;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {p0, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method
