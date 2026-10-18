.class public Landroid/view/animation/TranslateXAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "TranslateXAnimation.java"


# instance fields
.field mTmpValues:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/16 p1, 0x9

    .line 29
    new-array p1, p1, [F

    iput-object p1, p0, Landroid/view/animation/TranslateXAnimation;->mTmpValues:[F

    return-void
.end method

.method public constructor <init>(IFIF)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 42
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const/16 p1, 0x9

    .line 29
    new-array p1, p1, [F

    iput-object p1, p0, Landroid/view/animation/TranslateXAnimation;->mTmpValues:[F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 50
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 51
    iget-object v1, p0, Landroid/view/animation/TranslateXAnimation;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 52
    iget v0, p0, Landroid/view/animation/TranslateXAnimation;->mFromXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateXAnimation;->mToXDelta:F

    iget v2, p0, Landroid/view/animation/TranslateXAnimation;->mFromXDelta:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 53
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p0, p0, Landroid/view/animation/TranslateXAnimation;->mTmpValues:[F

    const/4 p2, 0x5

    aget p0, p0, p2

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method
