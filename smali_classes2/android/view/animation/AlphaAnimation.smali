.class public Landroid/view/animation/AlphaAnimation;
.super Landroid/view/animation/Animation;
.source "AlphaAnimation.java"


# instance fields
.field private mFromAlpha:F

.field private mToAlpha:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 59
    iput p1, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    .line 60
    iput p2, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    sget-object v0, Lcom/android/internal/R$styleable;->AlphaAnimation:[I

    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 68
    iget v0, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    .line 69
    iget p0, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    sub-float/2addr p0, v0

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    return-void
.end method

.method public hasAlpha()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public willChangeBounds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
