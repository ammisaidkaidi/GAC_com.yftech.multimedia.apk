.class public Lcom/yftech/libgallery/view/ClipImageView;
.super Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;
.source "ClipImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;
    }
.end annotation


# static fields
.field private static final DURATION_MS:I = 0x12c


# instance fields
.field private isAutoScale:Z

.field private isCanDrag:Z

.field private lastPointerCount:I

.field private mAspectX:I

.field private mAspectY:I

.field private mClipBorder:Landroid/graphics/Rect;

.field private mClipPadding:I

.field private mDrawCircleFlag:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInitScale:F

.field private mLastX:F

.field private mLastY:F

.field private mMaskColor:I

.field private final mMatrixValues:[F

.field private mMaxOutputWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRoundCorner:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScaleMatrix:Landroid/graphics/Matrix;

.field private mScaleMax:F

.field private mScaleMin:F

.field private mTipText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x270

    .line 40
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mAspectX:I

    const/16 p2, 0x500

    .line 41
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mAspectY:I

    const/high16 p2, 0x40800000    # 4.0f

    .line 45
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMax:F

    const/high16 p2, 0x40000000    # 2.0f

    .line 46
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMin:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 51
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mInitScale:F

    const/16 p2, 0x9

    .line 56
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mMatrixValues:[F

    const/4 p2, 0x0

    .line 61
    iput-object p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 62
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 76
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 77
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mMaxOutputWidth:I

    .line 79
    iput-boolean p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mDrawCircleFlag:Z

    const/4 p2, 0x0

    .line 80
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mRoundCorner:F

    .line 89
    invoke-direct {p0, p1}, Lcom/yftech/libgallery/view/ClipImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x270

    .line 40
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mAspectX:I

    const/16 p2, 0x500

    .line 41
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mAspectY:I

    const/high16 p2, 0x40800000    # 4.0f

    .line 45
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMax:F

    const/high16 p2, 0x40000000    # 2.0f

    .line 46
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMin:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 51
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mInitScale:F

    const/16 p2, 0x9

    .line 56
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mMatrixValues:[F

    const/4 p2, 0x0

    .line 61
    iput-object p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 62
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 76
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 77
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mMaxOutputWidth:I

    .line 79
    iput-boolean p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mDrawCircleFlag:Z

    const/4 p2, 0x0

    .line 80
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mRoundCorner:F

    .line 94
    invoke-direct {p0, p1}, Lcom/yftech/libgallery/view/ClipImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/generic/GenericDraweeHierarchy;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;-><init>(Landroid/content/Context;Lcom/facebook/drawee/generic/GenericDraweeHierarchy;)V

    const/16 p2, 0x270

    .line 40
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mAspectX:I

    const/16 p2, 0x500

    .line 41
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mAspectY:I

    const/high16 p2, 0x40800000    # 4.0f

    .line 45
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMax:F

    const/high16 p2, 0x40000000    # 2.0f

    .line 46
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMin:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 51
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mInitScale:F

    const/16 p2, 0x9

    .line 56
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mMatrixValues:[F

    const/4 p2, 0x0

    .line 61
    iput-object p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 62
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 76
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 77
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mMaxOutputWidth:I

    .line 79
    iput-boolean p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mDrawCircleFlag:Z

    const/4 p2, 0x0

    .line 80
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mRoundCorner:F

    .line 84
    invoke-direct {p0, p1}, Lcom/yftech/libgallery/view/ClipImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libgallery/view/ClipImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libgallery/view/ClipImageView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/yftech/libgallery/view/ClipImageView;->checkBorder()V

    return-void
.end method

.method static synthetic access$202(Lcom/yftech/libgallery/view/ClipImageView;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/yftech/libgallery/view/ClipImageView;->isAutoScale:Z

    return p1
.end method

.method private checkBorder()V
    .locals 5

    .line 368
    invoke-direct {p0}, Lcom/yftech/libgallery/view/ClipImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 374
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 375
    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget-object v3, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 378
    :goto_0
    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 379
    iget-object v1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 383
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    .line 384
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 385
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 388
    :cond_3
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 389
    iget-object v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    .line 393
    :cond_4
    iget-object p0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private getMatrixRectF()Landroid/graphics/RectF;
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 190
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 191
    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 193
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 194
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mPaint:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 100
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 101
    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yftech/libgallery/R$color;->color1A0000:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mMaskColor:I

    .line 103
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/yftech/libgallery/view/ClipImageView$1;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/view/ClipImageView$1;-><init>(Lcom/yftech/libgallery/view/ClipImageView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 124
    invoke-virtual {p0, p0}, Lcom/yftech/libgallery/view/ClipImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isCanDrag(FF)Z
    .locals 2

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p0, p1

    .line 404
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

    .line 269
    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->resetImageMatrix()V

    goto :goto_0

    .line 272
    :cond_0
    new-instance v0, Lcom/yftech/libgallery/view/ClipImageView$2;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/view/ClipImageView$2;-><init>(Lcom/yftech/libgallery/view/ClipImageView;)V

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/view/ClipImageView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private updateBorder()V
    .locals 4

    .line 223
    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->getWidth()I

    move-result v0

    .line 224
    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->getHeight()I

    move-result v1

    .line 225
    iget-object v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipPadding:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 226
    iget-object v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipPadding:I

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 227
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mAspectY:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mAspectX:I

    div-int/2addr v0, v2

    .line 228
    iget-boolean v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mDrawCircleFlag:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 229
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v0, v3

    div-int/2addr v0, v3

    .line 230
    iget-object v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 231
    iget-object v1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 234
    iget-object v1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method


# virtual methods
.method public clip()Landroid/graphics/Bitmap;
    .locals 9

    .line 329
    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 330
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v1, 0x9

    .line 331
    new-array v1, v1, [F

    .line 332
    iget-object v3, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x0

    .line 333
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

    .line 334
    aget v0, v1, v0

    const/4 v4, 0x5

    .line 335
    aget v1, v1, v4

    neg-float v0, v0

    .line 337
    iget-object v4, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    div-float/2addr v0, v3

    neg-float v1, v1

    .line 338
    iget-object v4, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    .line 339
    iget-object v4, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 340
    iget-object v5, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 343
    iget v3, p0, Lcom/yftech/libgallery/view/ClipImageView;->mMaxOutputWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/yftech/libgallery/view/ClipImageView;->mMaxOutputWidth:I

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    .line 344
    iget p0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mMaxOutputWidth:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    .line 345
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 346
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

    .line 349
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public drawRectangleOrCircle(Landroid/graphics/Canvas;)V
    .locals 10

    .line 426
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 427
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 428
    new-instance v8, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 429
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v1, 0x0

    .line 430
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 431
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/yftech/libgallery/view/ClipImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 432
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 433
    iget-boolean v1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mDrawCircleFlag:Z

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 435
    iget-object v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 436
    iget-object p0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    .line 437
    invoke-virtual {v7, v1, v2, p0, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 439
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 440
    iget v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mRoundCorner:F

    iget p0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mRoundCorner:F

    invoke-virtual {v7, v1, v2, p0, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 442
    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getClipBorder()Landroid/graphics/Rect;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getClipMatrixValues()[F
    .locals 1

    const/16 v0, 0x9

    .line 416
    new-array v0, v0, [F

    .line 417
    iget-object p0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    return-object v0
.end method

.method public final getScale()F
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 213
    iget-object p0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mMatrixValues:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 447
    invoke-super {p0, p1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->onDraw(Landroid/graphics/Canvas;)V

    .line 448
    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->getWidth()I

    move-result v0

    .line 449
    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->getHeight()I

    .line 451
    iget-object v1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mMaskColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 452
    iget-object v1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 459
    iget-object v1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 460
    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/view/ClipImageView;->drawRectangleOrCircle(Landroid/graphics/Canvas;)V

    .line 465
    iget-object v1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mTipText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mTipText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 468
    iget-object v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 469
    iget-object v3, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v2

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    .line 470
    iget-object v1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 471
    iget-object v1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mTipText:Ljava/lang/String;

    iget-object p0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 218
    invoke-super/range {p0 .. p5}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->onLayout(ZIIII)V

    .line 219
    invoke-direct {p0}, Lcom/yftech/libgallery/view/ClipImageView;->updateBorder()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public resetImageMatrix()V
    .locals 8

    .line 285
    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 291
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 293
    iget-object v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 294
    iget-object v3, p0, Lcom/yftech/libgallery/view/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 296
    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->getWidth()I

    move-result v4

    .line 297
    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->getHeight()I

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

    .line 312
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 313
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    add-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v4, v1

    float-to-int v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 315
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/view/ClipImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 317
    iput v2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mInitScale:F

    .line 318
    iget v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mInitScale:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMin:F

    .line 319
    iget v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mInitScale:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yftech/libgallery/view/ClipImageView;->mScaleMax:F

    return-void
.end method

.method public setAspect(II)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mAspectX:I

    .line 240
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView;->mAspectY:I

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 249
    invoke-super {p0, p1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    invoke-direct {p0}, Lcom/yftech/libgallery/view/ClipImageView;->postResetImageMatrix()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 255
    invoke-super {p0, p1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setImageResource(I)V

    .line 256
    invoke-direct {p0}, Lcom/yftech/libgallery/view/ClipImageView;->postResetImageMatrix()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 261
    invoke-super {p0, p1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 262
    invoke-direct {p0}, Lcom/yftech/libgallery/view/ClipImageView;->postResetImageMatrix()V

    return-void
.end method

.method public setMaxOutputWidth(I)V
    .locals 0

    .line 412
    iput p1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mMaxOutputWidth:I

    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/yftech/libgallery/view/ClipImageView;->mTipText:Ljava/lang/String;

    return-void
.end method

.method public snapShotForViewGroup()Landroid/graphics/Bitmap;
    .locals 3

    .line 355
    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/yftech/libgallery/view/ClipImageView;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method
