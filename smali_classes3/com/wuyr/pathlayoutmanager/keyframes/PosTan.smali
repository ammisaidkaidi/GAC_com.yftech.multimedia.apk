.class public Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;
.super Landroid/graphics/PointF;
.source "PosTan.java"


# instance fields
.field private angle:F

.field public fraction:F

.field public index:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-void
.end method

.method private constructor <init>(IFFF)V
    .locals 0

    .line 32
    invoke-direct {p0, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 33
    iput p4, p0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->angle:F

    .line 34
    iput p1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->index:I

    return-void
.end method

.method public constructor <init>(Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;IF)V
    .locals 2

    .line 38
    iget v0, p1, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->x:F

    iget v1, p1, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->y:F

    iget p1, p1, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->angle:F

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;-><init>(IFFF)V

    .line 39
    iput p3, p0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->fraction:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 59
    instance-of v2, p1, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    if-eqz v2, :cond_0

    iget p0, p0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->index:I

    check-cast p1, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    iget p1, p1, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->index:I

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    :goto_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public getChildAngle()F
    .locals 1

    .line 49
    iget p0, p0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->angle:F

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr p0, v0

    return p0
.end method

.method public set(FFF)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->x:F

    .line 44
    iput p2, p0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->y:F

    .line 45
    iput p3, p0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->angle:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 54
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "x: %f\ty: %f\tangle: %f"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget p0, p0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->angle:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
