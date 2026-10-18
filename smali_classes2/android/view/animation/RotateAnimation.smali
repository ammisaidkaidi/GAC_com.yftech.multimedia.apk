.class public Landroid/view/animation/RotateAnimation;
.super Landroid/view/animation/Animation;
.source "RotateAnimation.java"


# instance fields
.field private mFromDegrees:F

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private mToDegrees:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 35
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 37
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 83
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 84
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 85
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    .line 86
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2

    .line 104
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 35
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    const/4 v1, 0x0

    .line 36
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 37
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 105
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 106
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 108
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 109
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 110
    iput p3, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 111
    iput p4, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 112
    invoke-direct {p0}, Landroid/view/animation/RotateAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(FFIFIF)V
    .locals 1

    .line 141
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 35
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 37
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 142
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 143
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 145
    iput p4, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 146
    iput p3, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 147
    iput p6, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 148
    iput p5, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 149
    invoke-direct {p0}, Landroid/view/animation/RotateAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 35
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    const/4 v1, 0x0

    .line 36
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 37
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 51
    sget-object v2, Lcom/android/internal/R$styleable;->RotateAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    const/4 p2, 0x1

    .line 56
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    const/4 p2, 0x2

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-static {p2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object p2

    .line 60
    iget v0, p2, Landroid/view/animation/Animation$Description;->type:I

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 61
    iget p2, p2, Landroid/view/animation/Animation$Description;->value:F

    iput p2, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    const/4 p2, 0x3

    .line 63
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-static {p2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object p2

    .line 65
    iget v0, p2, Landroid/view/animation/Animation$Description;->type:I

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 66
    iget p2, p2, Landroid/view/animation/Animation$Description;->value:F

    iput p2, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 68
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    invoke-direct {p0}, Landroid/view/animation/RotateAnimation;->initializePivotPoint()V

    return-void
.end method

.method private initializePivotPoint()V
    .locals 1

    .line 157
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    if-nez v0, :cond_0

    .line 158
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    .line 160
    :cond_0
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    if-nez v0, :cond_1

    .line 161
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    :cond_1
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 167
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    iget v1, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    iget v2, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 168
    invoke-virtual {p0}, Landroid/view/animation/RotateAnimation;->getScaleFactor()F

    move-result p1

    .line 170
    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    mul-float/2addr v1, p1

    iget p0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    mul-float/2addr p0, p1

    invoke-virtual {p2, v0, v1, p0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :goto_0
    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 180
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/RotateAnimation;->resolveSize(IFII)F

    move-result p1

    iput p1, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    .line 181
    iget p1, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    iget p3, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/animation/RotateAnimation;->resolveSize(IFII)F

    move-result p1

    iput p1, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    return-void
.end method
