.class public Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;
.super Ljava/lang/Object;
.source "DefaultZoomableController.java"

# interfaces
.implements Lcom/media/common/ui/widget/zoomable/ZoomableController;
.implements Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/zoomable/DefaultZoomableController$LimitFlag;,
        Lcom/media/common/ui/widget/zoomable/DefaultZoomableController$ImageBoundsListener;
    }
.end annotation


# static fields
.field private static final EPS:F = 0.001f

.field private static final IDENTITY_RECT:Landroid/graphics/RectF;

.field public static final LIMIT_ALL:I = 0x7

.field public static final LIMIT_NONE:I = 0x0

.field public static final LIMIT_SCALE:I = 0x4

.field public static final LIMIT_TRANSLATION_X:I = 0x1

.field public static final LIMIT_TRANSLATION_Y:I = 0x2

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveTransform:Landroid/graphics/Matrix;

.field private final mActiveTransformInverse:Landroid/graphics/Matrix;

.field private mGestureDetector:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;

.field private final mImageBounds:Landroid/graphics/RectF;

.field private mImageBoundsListener:Lcom/media/common/ui/widget/zoomable/DefaultZoomableController$ImageBoundsListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIsEnabled:Z

.field private mIsGestureZoomEnabled:Z

.field private mIsRotationEnabled:Z

.field private mIsScaleEnabled:Z

.field private mIsTranslationEnabled:Z

.field private mListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mMaxScaleFactor:F

.field private mMinScaleFactor:F

.field private final mPreviousTransform:Landroid/graphics/Matrix;

.field private final mTempRect:Landroid/graphics/RectF;

.field private final mTempValues:[F

.field private final mTransformedImageBounds:Landroid/graphics/RectF;

.field private final mViewBounds:Landroid/graphics/RectF;

.field private mWasTransformCorrected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const-class v0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;

    sput-object v0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->TAG:Ljava/lang/Class;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->IDENTITY_RECT:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsEnabled:Z

    .line 56
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsRotationEnabled:Z

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsScaleEnabled:Z

    .line 58
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsTranslationEnabled:Z

    .line 59
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsGestureZoomEnabled:Z

    const/high16 v0, 0x3f000000    # 0.5f

    .line 63
    iput v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mMinScaleFactor:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 64
    iput v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mMaxScaleFactor:F

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mViewBounds:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTransformedImageBounds:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mPreviousTransform:Landroid/graphics/Matrix;

    .line 74
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransform:Landroid/graphics/Matrix;

    .line 75
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransformInverse:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    .line 76
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTempValues:[F

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTempRect:Landroid/graphics/RectF;

    .line 85
    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mGestureDetector:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;

    .line 86
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mGestureDetector:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;

    invoke-virtual {p1, p0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->setListener(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;)V

    return-void
.end method

.method private canScrollInAllDirection()Z
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTransformedImageBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mViewBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const v2, 0x3a83126f    # 0.001f

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTransformedImageBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mViewBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTransformedImageBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mViewBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTransformedImageBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mViewBounds:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, v2

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getMatrixScaleFactor(Landroid/graphics/Matrix;)F
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTempValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 590
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTempValues:[F

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0
.end method

.method private getOffset(FFFFF)F
    .locals 3

    sub-float p0, p2, p1

    sub-float v0, p4, p3

    sub-float v1, p5, p3

    sub-float v2, p4, p5

    .line 556
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    add-float/2addr p2, p1

    div-float/2addr p2, v2

    sub-float/2addr p5, p2

    return p5

    :cond_0
    cmpg-float p0, p0, v0

    if-gez p0, :cond_2

    add-float p0, p3, p4

    div-float/2addr p0, v2

    cmpg-float p0, p5, p0

    if-gez p0, :cond_1

    sub-float/2addr p3, p1

    return p3

    :cond_1
    sub-float/2addr p4, p2

    return p4

    :cond_2
    cmpl-float p0, p1, p3

    if-lez p0, :cond_3

    sub-float/2addr p3, p1

    return p3

    :cond_3
    cmpg-float p0, p2, p4

    if-gez p0, :cond_4

    sub-float/2addr p4, p2

    return p4

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private getTransformedImageBounds()Landroid/graphics/RectF;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTransformedImageBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method private isMatrixIdentity(Landroid/graphics/Matrix;F)Z
    .locals 4

    .line 603
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTempValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 604
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTempValues:[F

    const/4 v0, 0x0

    aget v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 605
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTempValues:[F

    const/4 v1, 0x4

    aget v3, p1, v1

    sub-float/2addr v3, v2

    aput v3, p1, v1

    .line 606
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTempValues:[F

    const/16 v1, 0x8

    aget v3, p1, v1

    sub-float/2addr v3, v2

    aput v3, p1, v1

    move p1, v0

    :goto_0
    const/16 v1, 0x9

    if-ge p1, v1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTempValues:[F

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private limit(FFF)F
    .locals 0

    .line 581
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private limitScale(Landroid/graphics/Matrix;FFI)Z
    .locals 3

    const/4 v0, 0x4

    .line 487
    invoke-static {p4, v0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->shouldLimit(II)Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    .line 490
    :cond_0
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->getMatrixScaleFactor(Landroid/graphics/Matrix;)F

    move-result p4

    .line 491
    iget v1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mMinScaleFactor:F

    iget v2, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mMaxScaleFactor:F

    invoke-direct {p0, p4, v1, v2}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->limit(FFF)F

    move-result p0

    cmpl-float v1, p0, p4

    if-eqz v1, :cond_1

    div-float/2addr p0, p4

    .line 494
    invoke-virtual {p1, p0, p0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private limitTranslation(Landroid/graphics/Matrix;I)Z
    .locals 11

    const/4 v0, 0x3

    .line 511
    invoke-static {p2, v0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->shouldLimit(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTempRect:Landroid/graphics/RectF;

    .line 515
    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 516
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const/4 v2, 0x1

    .line 518
    invoke-static {p2, v2}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->shouldLimit(II)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mViewBounds:Landroid/graphics/RectF;

    iget v8, v3, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mViewBounds:Landroid/graphics/RectF;

    iget v9, v3, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    .line 520
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    move-object v5, p0

    .line 519
    invoke-direct/range {v5 .. v10}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->getOffset(FFFFF)F

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    const/4 v5, 0x2

    .line 523
    invoke-static {p2, v5}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->shouldLimit(II)Z

    move-result p2

    if-eqz p2, :cond_2

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mViewBounds:Landroid/graphics/RectF;

    iget v8, p2, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mViewBounds:Landroid/graphics/RectF;

    iget v9, p2, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    .line 525
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    move-object v5, p0

    .line 524
    invoke-direct/range {v5 .. v10}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->getOffset(FFFFF)F

    move-result p0

    goto :goto_1

    :cond_2
    move p0, v4

    :goto_1
    cmpl-float p2, v3, v4

    if-nez p2, :cond_4

    cmpl-float p2, p0, v4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    return v1

    .line 528
    :cond_4
    :goto_2
    invoke-virtual {p1, v3, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v2
.end method

.method private mapAbsoluteToRelative([F[FI)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x0

    .line 310
    aget v3, p2, v2

    iget-object v4, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    .line 311
    aget v2, p2, v1

    iget-object v3, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mapRelativeToAbsolute([F[FI)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x0

    .line 326
    aget v3, p2, v2

    iget-object v4, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    .line 327
    aget v2, p2, v1

    iget-object v3, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;
    .locals 2

    .line 81
    new-instance v0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;

    invoke-static {}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->newInstance()Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;-><init>(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V

    return-object v0
.end method

.method private onTransformBegin()V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransform:Landroid/graphics/Matrix;

    invoke-interface {v0, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;->onTransformBegin(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private onTransformChanged()V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTransformedImageBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 466
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransform:Landroid/graphics/Matrix;

    invoke-interface {v0, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;->onTransformChanged(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private onTransformEnd()V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransform:Landroid/graphics/Matrix;

    invoke-interface {v0, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;->onTransformEnd(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private static shouldLimit(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected calculateGestureTransform(Landroid/graphics/Matrix;I)Z
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mGestureDetector:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;

    .line 440
    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mPreviousTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 441
    iget-boolean v1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsRotationEnabled:Z

    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->getRotation()F

    move-result v1

    const v2, 0x42652ee1

    mul-float/2addr v1, v2

    .line 443
    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->getPivotX()F

    move-result v2

    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->getPivotY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 445
    :cond_0
    iget-boolean v1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsScaleEnabled:Z

    if-eqz v1, :cond_1

    .line 446
    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->getScale()F

    move-result v1

    .line 447
    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->getPivotX()F

    move-result v2

    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->getPivotY()F

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 450
    :cond_1
    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->getPivotX()F

    move-result v1

    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->getPivotY()F

    move-result v2

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->limitScale(Landroid/graphics/Matrix;FFI)Z

    move-result v1

    or-int/lit8 v1, v1, 0x0

    .line 451
    iget-boolean v2, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsTranslationEnabled:Z

    if-eqz v2, :cond_2

    .line 452
    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->getTranslationX()F

    move-result v2

    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 454
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->limitTranslation(Landroid/graphics/Matrix;I)Z

    move-result p0

    or-int/2addr p0, v1

    return p0
.end method

.method protected calculateZoomToPointTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;Landroid/graphics/PointF;I)Z
    .locals 5

    .line 362
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTempValues:[F

    .line 363
    iget v1, p3, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 364
    iget p3, p3, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 365
    invoke-direct {p0, v0, v0, v1}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mapRelativeToAbsolute([F[FI)V

    .line 366
    iget p3, p4, Landroid/graphics/PointF;->x:F

    aget v3, v0, v2

    sub-float/2addr p3, v3

    .line 367
    iget p4, p4, Landroid/graphics/PointF;->y:F

    aget v3, v0, v1

    sub-float/2addr p4, v3

    .line 369
    aget v3, v0, v2

    aget v4, v0, v1

    invoke-virtual {p1, p2, p2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 370
    aget p2, v0, v2

    aget v0, v0, v1

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->limitScale(Landroid/graphics/Matrix;FFI)Z

    move-result p2

    or-int/2addr p2, v2

    .line 371
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 372
    invoke-direct {p0, p1, p5}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->limitTranslation(Landroid/graphics/Matrix;I)Z

    move-result p0

    or-int/2addr p0, p2

    return p0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 0

    .line 635
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mViewBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mViewBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTransformedImageBounds:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public computeHorizontalScrollRange()I
    .locals 0

    .line 625
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTransformedImageBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public computeVerticalScrollExtent()I
    .locals 0

    .line 650
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mViewBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mViewBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTransformedImageBounds:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public computeVerticalScrollRange()I
    .locals 0

    .line 640
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTransformedImageBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method protected getDetector()Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mGestureDetector:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;

    return-object p0
.end method

.method public getImageBounds()Landroid/graphics/RectF;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getImageBoundsListener()Lcom/media/common/ui/widget/zoomable/DefaultZoomableController$ImageBoundsListener;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 233
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBoundsListener:Lcom/media/common/ui/widget/zoomable/DefaultZoomableController$ImageBoundsListener;

    return-object p0
.end method

.method public getImageRelativeToViewAbsoluteTransform(Landroid/graphics/Matrix;)V
    .locals 2

    .line 269
    sget-object v0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->IDENTITY_RECT:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTransformedImageBounds:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v0, p0, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    return-void
.end method

.method public getListener()Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;
    .locals 0

    .line 654
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

    return-object p0
.end method

.method public getMaxScaleFactor()F
    .locals 0

    .line 174
    iget p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mMaxScaleFactor:F

    return p0
.end method

.method public getMinScaleFactor()F
    .locals 0

    .line 160
    iget p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mMinScaleFactor:F

    return p0
.end method

.method public getScaleFactor()F
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransform:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->getMatrixScaleFactor(Landroid/graphics/Matrix;)F

    move-result p0

    return p0
.end method

.method public getTransform()Landroid/graphics/Matrix;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransform:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getViewBounds()Landroid/graphics/RectF;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mViewBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsEnabled:Z

    return p0
.end method

.method public isGestureZoomEnabled()Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsGestureZoomEnabled:Z

    return p0
.end method

.method public isIdentity()Z
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransform:Landroid/graphics/Matrix;

    const v1, 0x3a83126f    # 0.001f

    invoke-direct {p0, v0, v1}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->isMatrixIdentity(Landroid/graphics/Matrix;F)Z

    move-result p0

    return p0
.end method

.method public isRotationEnabled()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsRotationEnabled:Z

    return p0
.end method

.method public isScaleEnabled()Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsScaleEnabled:Z

    return p0
.end method

.method public isTranslationEnabled()Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsTranslationEnabled:Z

    return p0
.end method

.method public mapImageToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 9

    .line 291
    iget-object v6, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTempValues:[F

    .line 292
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v7, 0x0

    aput v0, v6, v7

    .line 293
    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x1

    aput p1, v6, v8

    .line 294
    invoke-direct {p0, v6, v6, v8}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mapRelativeToAbsolute([F[FI)V

    .line 295
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransform:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, v6

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 296
    new-instance p0, Landroid/graphics/PointF;

    aget p1, v6, v7

    aget v0, v6, v8

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public mapViewToImage(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 9

    .line 277
    iget-object v6, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mTempValues:[F

    .line 278
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v7, 0x0

    aput v0, v6, v7

    .line 279
    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x1

    aput p1, v6, v8

    .line 280
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransform:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransformInverse:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 281
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransformInverse:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, v6

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 282
    invoke-direct {p0, v6, v6, v8}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mapAbsoluteToRelative([F[FI)V

    .line 283
    new-instance p0, Landroid/graphics/PointF;

    aget p1, v6, v7

    aget v0, v6, v8

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public onGestureBegin(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V
    .locals 1

    .line 402
    sget-object p1, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->TAG:Ljava/lang/Class;

    const-string v0, "onGestureBegin"

    invoke-static {p1, v0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 403
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mPreviousTransform:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 404
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->onTransformBegin()V

    .line 409
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->canScrollInAllDirection()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mWasTransformCorrected:Z

    return-void
.end method

.method public onGestureEnd(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V
    .locals 1

    .line 426
    sget-object p1, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->TAG:Ljava/lang/Class;

    const-string v0, "onGestureEnd"

    invoke-static {p1, v0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->onTransformEnd()V

    return-void
.end method

.method public onGestureUpdate(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V
    .locals 1

    .line 414
    sget-object p1, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->TAG:Ljava/lang/Class;

    const-string v0, "onGestureUpdate"

    invoke-static {p1, v0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 415
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransform:Landroid/graphics/Matrix;

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->calculateGestureTransform(Landroid/graphics/Matrix;I)Z

    move-result p1

    .line 416
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->onTransformChanged()V

    if-eqz p1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mGestureDetector:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->restartGesture()V

    .line 421
    :cond_0
    iput-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mWasTransformCorrected:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 391
    sget-object v0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->TAG:Ljava/lang/Class;

    const-string v1, "onTouchEvent: action: "

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    iget-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsGestureZoomEnabled:Z

    if-eqz v0, :cond_0

    .line 393
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mGestureDetector:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 2

    .line 91
    sget-object v0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->TAG:Ljava/lang/Class;

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mGestureDetector:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->reset()V

    .line 93
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mPreviousTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 94
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 95
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->onTransformChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsEnabled:Z

    if-nez p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->reset()V

    :cond_0
    return-void
.end method

.method public setGestureZoomEnabled(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsGestureZoomEnabled:Z

    return-void
.end method

.method public setImageBounds(Landroid/graphics/RectF;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 198
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->onTransformChanged()V

    .line 199
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBoundsListener:Lcom/media/common/ui/widget/zoomable/DefaultZoomableController$ImageBoundsListener;

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBoundsListener:Lcom/media/common/ui/widget/zoomable/DefaultZoomableController$ImageBoundsListener;

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBounds:Landroid/graphics/RectF;

    invoke-interface {p1, p0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController$ImageBoundsListener;->onImageBoundsSet(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public setImageBoundsListener(Lcom/media/common/ui/widget/zoomable/DefaultZoomableController$ImageBoundsListener;)V
    .locals 0
    .param p1    # Lcom/media/common/ui/widget/zoomable/DefaultZoomableController$ImageBoundsListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 228
    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mImageBoundsListener:Lcom/media/common/ui/widget/zoomable/DefaultZoomableController$ImageBoundsListener;

    return-void
.end method

.method public setListener(Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

    return-void
.end method

.method public setMaxScaleFactor(F)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mMaxScaleFactor:F

    return-void
.end method

.method public setMinScaleFactor(F)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mMinScaleFactor:F

    return-void
.end method

.method public setRotationEnabled(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsRotationEnabled:Z

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsScaleEnabled:Z

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 2

    .line 378
    sget-object v0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->TAG:Ljava/lang/Class;

    const-string/jumbo v1, "setTransform"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 380
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->onTransformChanged()V

    return-void
.end method

.method public setTranslationEnabled(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mIsTranslationEnabled:Z

    return-void
.end method

.method public setViewBounds(Landroid/graphics/RectF;)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mViewBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public wasTransformCorrected()Z
    .locals 0

    .line 250
    iget-boolean p0, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mWasTransformCorrected:Z

    return p0
.end method

.method public zoomToPoint(FLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 8

    .line 340
    sget-object v0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->TAG:Ljava/lang/Class;

    const-string/jumbo v1, "zoomToPoint"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 341
    iget-object v3, p0, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->mActiveTransform:Landroid/graphics/Matrix;

    const/4 v7, 0x7

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->calculateZoomToPointTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    .line 342
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->onTransformChanged()V

    return-void
.end method
