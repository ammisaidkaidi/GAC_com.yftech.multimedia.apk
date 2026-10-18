.class public Landroid/view/animation/ScaleAnimation;
.super Landroid/view/animation/Animation;
.source "ScaleAnimation.java"


# instance fields
.field private mFromX:F

.field private mFromXData:I

.field private mFromXType:I

.field private mFromY:F

.field private mFromYData:I

.field private mFromYType:I

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private final mResources:Landroid/content/res/Resources;

.field private mToX:F

.field private mToXData:I

.field private mToXType:I

.field private mToY:F

.field private mToYData:I

.field private mToYType:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2

    .line 145
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    const/4 v1, 0x0

    .line 146
    iput-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 147
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 148
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 149
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 150
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 151
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 152
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2

    .line 172
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    const/4 v1, 0x0

    .line 173
    iput-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 174
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 175
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 176
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 177
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 179
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 180
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 181
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 182
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 183
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(FFFFIFIF)V
    .locals 1

    .line 213
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 215
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 216
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 217
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 218
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 220
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 221
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 222
    iput p8, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 223
    iput p7, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 224
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 67
    sget-object v2, Lcom/android/internal/R$styleable;->ScaleAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 72
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    const/4 v2, 0x4

    if-eqz p2, :cond_1

    .line 74
    iget v3, p2, Landroid/util/TypedValue;->type:I

    if-ne v3, v2, :cond_0

    .line 76
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    goto :goto_0

    .line 78
    :cond_0
    iget v3, p2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 79
    iget p2, p2, Landroid/util/TypedValue;->data:I

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    :cond_1
    :goto_0
    const/4 p2, 0x3

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 84
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    if-eqz p2, :cond_3

    .line 86
    iget v3, p2, Landroid/util/TypedValue;->type:I

    if-ne v3, v2, :cond_2

    .line 88
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    goto :goto_1

    .line 90
    :cond_2
    iget v3, p2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 91
    iget p2, p2, Landroid/util/TypedValue;->data:I

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 95
    :cond_3
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 97
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    if-eqz p2, :cond_5

    .line 99
    iget v3, p2, Landroid/util/TypedValue;->type:I

    if-ne v3, v2, :cond_4

    .line 101
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    goto :goto_2

    .line 103
    :cond_4
    iget v3, p2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 104
    iget p2, p2, Landroid/util/TypedValue;->data:I

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    :cond_5
    :goto_2
    const/4 p2, 0x5

    .line 107
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 109
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    if-eqz p2, :cond_7

    .line 111
    iget v1, p2, Landroid/util/TypedValue;->type:I

    if-ne v1, v2, :cond_6

    .line 113
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    goto :goto_3

    .line 115
    :cond_6
    iget v1, p2, Landroid/util/TypedValue;->type:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 116
    iget p2, p2, Landroid/util/TypedValue;->data:I

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 120
    :cond_7
    :goto_3
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-static {p2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object p2

    .line 122
    iget v0, p2, Landroid/view/animation/Animation$Description;->type:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 123
    iget p2, p2, Landroid/view/animation/Animation$Description;->value:F

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    const/4 p2, 0x1

    .line 125
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-static {p2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object p2

    .line 127
    iget v0, p2, Landroid/view/animation/Animation$Description;->type:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 128
    iget p2, p2, Landroid/view/animation/Animation$Description;->value:F

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 130
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void
.end method

.method private initializePivotPoint()V
    .locals 1

    .line 232
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    if-nez v0, :cond_0

    .line 233
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 235
    :cond_0
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    if-nez v0, :cond_1

    .line 236
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    :cond_1
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    .line 244
    invoke-virtual {p0}, Landroid/view/animation/ScaleAnimation;->getScaleFactor()F

    move-result v0

    .line 246
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 247
    :cond_1
    :goto_0
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    .line 249
    :goto_1
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_3

    .line 250
    :cond_2
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 253
    :cond_3
    iget p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4

    iget p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4

    .line 254
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_2

    .line 256
    :cond_4
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget p2, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    mul-float/2addr p2, v0

    iget p0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    mul-float/2addr v0, p0

    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :goto_2
    return-void
.end method

.method public initialize(IIII)V
    .locals 7

    .line 279
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 281
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 282
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    move-object v1, p0

    move v5, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 283
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    move v5, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 284
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    invoke-virtual/range {v1 .. v6}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 286
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result p1

    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 287
    iget p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iget p3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result p1

    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    return-void
.end method

.method resolveScale(FIIII)F
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    int-to-float p0, p4

    int-to-float p1, p5

    .line 263
    invoke-static {p3, p0, p1}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p5, 0x5

    if-ne p2, p5, :cond_2

    .line 265
    iget-object p0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result p0

    :goto_0
    if-nez p4, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    int-to-float p1, p4

    div-float/2addr p0, p1

    return p0

    :cond_2
    return p1
.end method
