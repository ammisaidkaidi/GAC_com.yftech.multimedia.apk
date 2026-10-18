.class public Lcom/media/common/ui/widget/ClipImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ClipImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/ClipImageView$AutoScaleRunnable;
    }
.end annotation


# instance fields
.field private isAutoScale:Z

.field private isCanDrag:Z

.field isScaleIng:Z

.field private lastPointerCount:I

.field private mAspectX:I

.field private mAspectY:I

.field private mClipBorder:Landroid/graphics/Rect;

.field private final mClipPadding:I

.field private mDrawCircleFlag:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInitScale:F

.field private mLastX:F

.field private mLastY:F

.field private final mMaskColor:I

.field private final mMatrixValues:[F

.field private mMaxOutputWidth:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mRoundCorner:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScaleMatrix:Landroid/graphics/Matrix;

.field private mScaleMax:F

.field private mScaleMin:F

.field private mTipText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/media/common/ui/widget/ClipImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 84
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 42
    iput v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMax:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 43
    iput v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMin:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    iput v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mInitScale:F

    const/16 v0, 0x9

    .line 53
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mMatrixValues:[F

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mMaxOutputWidth:I

    .line 231
    iput-boolean v0, p0, Lcom/media/common/ui/widget/ClipImageView;->isScaleIng:Z

    .line 86
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/media/common/ui/widget/ClipImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 87
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/media/common/ui/widget/ClipImageView$1;

    invoke-direct {v2, p0}, Lcom/media/common/ui/widget/ClipImageView$1;-><init>(Lcom/media/common/ui/widget/ClipImageView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 105
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 108
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    .line 109
    iget-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    sget-object v1, Lcom/media/common/ui/widget/R$styleable;->ClipImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 112
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ClipImageView_civWidth:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/ClipImageView;->mAspectX:I

    .line 113
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ClipImageView_civHeight:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/ClipImageView;->mAspectY:I

    .line 114
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ClipImageView_civClipPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipPadding:I

    .line 115
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ClipImageView_civTipText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/media/common/ui/widget/ClipImageView;->mTipText:Ljava/lang/String;

    .line 116
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ClipImageView_civMaskColor:I

    const/high16 v1, -0x4e000000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/ClipImageView;->mMaskColor:I

    .line 117
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ClipImageView_civClipCircle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/media/common/ui/widget/ClipImageView;->mDrawCircleFlag:Z

    .line 118
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ClipImageView_civClipRoundCorner:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/ClipImageView;->mRoundCorner:F

    .line 119
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ClipImageView_civTipTextSize:I

    const/16 v0, 0x18

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 120
    iget-object v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 121
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    iget-object p0, p0, Lcom/media/common/ui/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/media/common/ui/widget/ClipImageView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/media/common/ui/widget/ClipImageView;->isAutoScale:Z

    return p0
.end method

.method static synthetic access$002(Lcom/media/common/ui/widget/ClipImageView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/media/common/ui/widget/ClipImageView;->isAutoScale:Z

    return p1
.end method

.method static synthetic access$100(Lcom/media/common/ui/widget/ClipImageView;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMin:F

    return p0
.end method

.method static synthetic access$200(Lcom/media/common/ui/widget/ClipImageView;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/media/common/ui/widget/ClipImageView;->mInitScale:F

    return p0
.end method

.method static synthetic access$300(Lcom/media/common/ui/widget/ClipImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$400(Lcom/media/common/ui/widget/ClipImageView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/media/common/ui/widget/ClipImageView;->checkBorder()V

    return-void
.end method

.method private checkBorder()V
    .locals 5

    .line 467
    invoke-direct {p0}, Lcom/media/common/ui/widget/ClipImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 473
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 474
    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget-object v3, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 477
    :goto_0
    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 478
    iget-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 482
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    .line 483
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 484
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 487
    :cond_3
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 488
    iget-object v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    .line 492
    :cond_4
    iget-object p0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private getMatrixRectF()Landroid/graphics/RectF;
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 223
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 224
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 227
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-object v1
.end method

.method private isCanDrag(FF)Z
    .locals 2

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p0, p1

    .line 503
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private postResetImageMatrix()V
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ClipImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ClipImageView;->resetImageMatrix()V

    goto :goto_0

    .line 381
    :cond_0
    new-instance v0, Lcom/media/common/ui/widget/ClipImageView$2;

    invoke-direct {v0, p0}, Lcom/media/common/ui/widget/ClipImageView$2;-><init>(Lcom/media/common/ui/widget/ClipImageView;)V

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/ClipImageView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private updateBorder()V
    .locals 4

    .line 332
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ClipImageView;->getWidth()I

    move-result v0

    .line 333
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ClipImageView;->getHeight()I

    move-result v1

    .line 334
    iget-object v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipPadding:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 335
    iget-object v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipPadding:I

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 336
    iget-object v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mAspectY:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mAspectX:I

    div-int/2addr v0, v2

    .line 337
    iget-boolean v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mDrawCircleFlag:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 338
    iget-object v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v0, v3

    div-int/2addr v0, v3

    .line 339
    iget-object v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 340
    iget-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 343
    iget-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method


# virtual methods
.method public clip()Landroid/graphics/Bitmap;
    .locals 9

    .line 437
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 438
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v1, 0x9

    .line 440
    new-array v1, v1, [F

    .line 441
    iget-object v3, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x0

    .line 442
    aget v3, v1, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    const/4 v0, 0x2

    .line 443
    aget v0, v1, v0

    const/4 v4, 0x5

    .line 444
    aget v1, v1, v4

    neg-float v0, v0

    .line 446
    iget-object v4, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    div-float/2addr v0, v3

    neg-float v1, v1

    .line 447
    iget-object v4, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    .line 448
    iget-object v4, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 449
    iget-object v5, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 452
    iget v3, p0, Lcom/media/common/ui/widget/ClipImageView;->mMaxOutputWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/media/common/ui/widget/ClipImageView;->mMaxOutputWidth:I

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    .line 453
    iget p0, p0, Lcom/media/common/ui/widget/ClipImageView;->mMaxOutputWidth:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    .line 454
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 455
    invoke-virtual {v3, p0, p0}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v7, v3

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move-object v7, p0

    :goto_0
    float-to-int v3, v0

    float-to-int p0, v1

    float-to-int v0, v4

    float-to-int v6, v5

    const/4 v8, 0x0

    move v4, p0

    move v5, v0

    .line 458
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public drawRectangleOrCircle(Landroid/graphics/Canvas;)V
    .locals 10

    .line 525
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 526
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 527
    new-instance v8, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 528
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v1, 0x0

    .line 529
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 530
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/media/common/ui/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 531
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 532
    iget-boolean v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mDrawCircleFlag:Z

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 534
    iget-object v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 535
    iget-object p0, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    .line 536
    invoke-virtual {v7, v1, v2, p0, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 538
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 539
    iget v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mRoundCorner:F

    iget p0, p0, Lcom/media/common/ui/widget/ClipImageView;->mRoundCorner:F

    invoke-virtual {v7, v1, v2, p0, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 541
    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getClipBorder()Landroid/graphics/Rect;
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getClipMatrixValues()[F
    .locals 1

    const/16 v0, 0x9

    .line 515
    new-array v0, v0, [F

    .line 516
    iget-object p0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    return-object v0
.end method

.method public final getScale()F
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 322
    iget-object p0, p0, Lcom/media/common/ui/widget/ClipImageView;->mMatrixValues:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 546
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 547
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ClipImageView;->getWidth()I

    move-result v0

    .line 548
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ClipImageView;->getHeight()I

    .line 550
    iget-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mMaskColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
    iget-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 558
    iget-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 559
    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/ClipImageView;->drawRectangleOrCircle(Landroid/graphics/Canvas;)V

    .line 564
    iget-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mTipText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mTipText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 567
    iget-object v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 568
    iget-object v3, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v2

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    .line 569
    iget-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 570
    iget-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mTipText:Ljava/lang/String;

    iget-object p0, p0, Lcom/media/common/ui/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 327
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatImageView;->onLayout(ZIIII)V

    .line 328
    invoke-direct {p0}, Lcom/media/common/ui/widget/ClipImageView;->updateBorder()V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/media/common/ui/widget/ClipImageView;->isScaleIng:Z

    .line 185
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ClipImageView;->getScale()F

    move-result v1

    .line 186
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    .line 188
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    return v0

    .line 194
    :cond_0
    iget v3, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMax:F

    cmpg-float v3, v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v3, :cond_1

    cmpl-float v3, v2, v4

    if-gtz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/media/common/ui/widget/ClipImageView;->mInitScale:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5

    cmpg-float v3, v2, v4

    if-gez v3, :cond_5

    :cond_2
    mul-float v3, v2, v1

    .line 199
    iget v4, p0, Lcom/media/common/ui/widget/ClipImageView;->mInitScale:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 200
    iget v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mInitScale:F

    div-float/2addr v2, v1

    :cond_3
    mul-float v3, v2, v1

    .line 202
    iget v4, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMax:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 203
    iget v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMax:F

    div-float/2addr v2, v1

    .line 208
    :cond_4
    iget-object v1, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 209
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 208
    invoke-virtual {v1, v2, v2, v3, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 210
    invoke-direct {p0}, Lcom/media/common/ui/widget/ClipImageView;->checkBorder()V

    .line 211
    iget-object p1, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/ClipImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_5
    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    .line 234
    iput-boolean p1, p0, Lcom/media/common/ui/widget/ClipImageView;->isScaleIng:Z

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lcom/media/common/ui/widget/ClipImageView;->isScaleIng:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 245
    iget-object v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 248
    iget-boolean v0, p0, Lcom/media/common/ui/widget/ClipImageView;->isScaleIng:Z

    if-eqz v0, :cond_1

    return v1

    .line 253
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get pointerCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v4, v0, :cond_3

    .line 260
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v5, v7

    .line 261
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    int-to-float v4, v0

    div-float/2addr v5, v4

    div-float/2addr v6, v4

    .line 269
    iget v4, p0, Lcom/media/common/ui/widget/ClipImageView;->lastPointerCount:I

    if-eq v0, v4, :cond_4

    .line 270
    iput-boolean v2, p0, Lcom/media/common/ui/widget/ClipImageView;->isCanDrag:Z

    .line 271
    iput v5, p0, Lcom/media/common/ui/widget/ClipImageView;->mLastX:F

    .line 272
    iput v6, p0, Lcom/media/common/ui/widget/ClipImageView;->mLastY:F

    .line 275
    :cond_4
    iput v0, p0, Lcom/media/common/ui/widget/ClipImageView;->lastPointerCount:I

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 278
    :pswitch_0
    iget p1, p0, Lcom/media/common/ui/widget/ClipImageView;->mLastX:F

    sub-float p1, v5, p1

    .line 279
    iget v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mLastY:F

    sub-float v0, v6, v0

    .line 281
    iget-boolean v2, p0, Lcom/media/common/ui/widget/ClipImageView;->isCanDrag:Z

    if-nez v2, :cond_5

    .line 282
    invoke-direct {p0, p1, v0}, Lcom/media/common/ui/widget/ClipImageView;->isCanDrag(FF)Z

    move-result v2

    iput-boolean v2, p0, Lcom/media/common/ui/widget/ClipImageView;->isCanDrag:Z

    .line 284
    :cond_5
    iget-boolean v2, p0, Lcom/media/common/ui/widget/ClipImageView;->isCanDrag:Z

    if-eqz v2, :cond_8

    .line 285
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 287
    invoke-direct {p0}, Lcom/media/common/ui/widget/ClipImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v7, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_6

    move p1, v3

    .line 294
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v4, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_7

    move v0, v3

    .line 297
    :cond_7
    iget-object v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 298
    invoke-direct {p0}, Lcom/media/common/ui/widget/ClipImageView;->checkBorder()V

    .line 299
    iget-object p1, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/ClipImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 302
    :cond_8
    iput v5, p0, Lcom/media/common/ui/widget/ClipImageView;->mLastX:F

    .line 303
    iput v6, p0, Lcom/media/common/ui/widget/ClipImageView;->mLastY:F

    goto :goto_1

    .line 308
    :pswitch_1
    iput v2, p0, Lcom/media/common/ui/widget/ClipImageView;->lastPointerCount:I

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetImageMatrix()V
    .locals 8

    .line 394
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 399
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 400
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 402
    iget-object v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 403
    iget-object v3, p0, Lcom/media/common/ui/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 405
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ClipImageView;->getWidth()I

    move-result v4

    .line 406
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ClipImageView;->getHeight()I

    move-result v5

    mul-int v6, v1, v3

    mul-int v7, v2, v0

    if-le v6, v7, :cond_1

    int-to-float v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    :goto_0
    int-to-float v3, v4

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    int-to-float v4, v5

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float/2addr v4, v0

    mul-float/2addr v4, v1

    .line 421
    iget-object v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 422
    iget-object v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    add-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v4, v1

    float-to-int v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 424
    iget-object v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/ClipImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 426
    iput v2, p0, Lcom/media/common/ui/widget/ClipImageView;->mInitScale:F

    .line 427
    iget v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mInitScale:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMin:F

    .line 428
    iget v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mInitScale:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/media/common/ui/widget/ClipImageView;->mScaleMax:F

    return-void
.end method

.method public setAspect(II)V
    .locals 0

    .line 348
    iput p1, p0, Lcom/media/common/ui/widget/ClipImageView;->mAspectX:I

    .line 349
    iput p2, p0, Lcom/media/common/ui/widget/ClipImageView;->mAspectY:I

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 358
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    invoke-direct {p0}, Lcom/media/common/ui/widget/ClipImageView;->postResetImageMatrix()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 364
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 365
    invoke-direct {p0}, Lcom/media/common/ui/widget/ClipImageView;->postResetImageMatrix()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 370
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 371
    invoke-direct {p0}, Lcom/media/common/ui/widget/ClipImageView;->postResetImageMatrix()V

    return-void
.end method

.method public setMaxOutputWidth(I)V
    .locals 0

    .line 511
    iput p1, p0, Lcom/media/common/ui/widget/ClipImageView;->mMaxOutputWidth:I

    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/media/common/ui/widget/ClipImageView;->mTipText:Ljava/lang/String;

    return-void
.end method
