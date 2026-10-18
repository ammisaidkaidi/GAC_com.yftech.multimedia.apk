.class public Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Lcom/yftech/car/widget/media/photo/photoview/IPhotoView;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/yftech/car/widget/media/photo/photoview/gestures/OnGestureListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;,
        Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;,
        Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnViewTapListener;,
        Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnPhotoTapListener;,
        Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnMatrixChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final EDGE_BOTH:I = 0x2

.field static final EDGE_LEFT:I = 0x0

.field static final EDGE_NONE:I = -0x1

.field static final EDGE_RIGHT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PhotoViewAttacher"

.field public static final PLAY_DOUBLE_CLICK:I = 0x33

.field public static isPlay:Z

.field static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field ZOOM_DURATION:I

.field private context:Landroid/content/Context;

.field private downX:I

.field private downY:I

.field private isButton:Z

.field private isTouch:Z

.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mCurrentFlingRunnable:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsClick:Z

.field private mIvBottom:I

.field private mIvLeft:I

.field private mIvRight:I

.field private mIvTop:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mPhotoTapListener:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnPhotoTapListener;

.field private mScaleDragDetector:Lcom/yftech/car/widget/media/photo/photoview/gestures/GestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScaledTouchSlop:I

.field private mScrollEdge:I

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mViewTapListener:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnViewTapListener;

.field private mZoomEnabled:Z

.field private onTouch:Lcom/yftech/car/widget/media/photo/photoview/ImageOnTouch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PhotoViewAttacher"

    const/4 v1, 0x3

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->DEBUG:Z

    .line 68
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 60
    iput v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaledTouchSlop:I

    const/16 v0, 0xc8

    .line 69
    iput v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 76
    iput v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMinScale:F

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 77
    iput v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMidScale:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 78
    iput v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMaxScale:F

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mIsClick:Z

    .line 87
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->isButton:Z

    .line 90
    new-instance v1, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$1;-><init>(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 157
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 158
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 159
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    const/16 v1, 0x9

    .line 160
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMatrixValues:[F

    const/4 v1, 0x2

    .line 170
    iput v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 173
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 176
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 178
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->context:Landroid/content/Context;

    .line 180
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 185
    :cond_0
    invoke-static {p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 187
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 192
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 191
    invoke-static {v1, p0}, Lcom/yftech/car/widget/media/photo/photoview/gestures/VersionedGestureDetector;->newInstance(Landroid/content/Context;Lcom/yftech/car/widget/media/photo/photoview/gestures/OnGestureListener;)Lcom/yftech/car/widget/media/photo/photoview/gestures/GestureDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/yftech/car/widget/media/photo/photoview/gestures/GestureDetector;

    .line 194
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$2;

    invoke-direct {v2, p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$2;-><init>(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 206
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/yftech/car/widget/media/photo/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/photo/photoview/DefaultOnDoubleTapListener;-><init>(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;)V

    invoke-virtual {p1, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setZoomable(Z)V

    .line 211
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaledTouchSlop:I

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;)Lcom/yftech/car/widget/media/photo/photoview/ImageOnTouch;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->onTouch:Lcom/yftech/car/widget/media/photo/photoview/ImageOnTouch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private cancelFling()V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    const/4 v0, 0x0

    .line 768
    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;

    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .line 776
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private checkImageViewScaleType()V
    .locals 1

    .line 782
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 788
    instance-of v0, p0, Lcom/yftech/car/widget/media/photo/photoview/IPhotoView;

    if-nez v0, :cond_1

    .line 789
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 790
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private checkMatrixBounds()Z
    .locals 10

    .line 797
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 802
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 807
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 810
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v6, v3, v5

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    if-gtz v6, :cond_2

    .line 812
    sget-object v6, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v9, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v6, v6, v9

    packed-switch v6, :pswitch_data_0

    sub-float/2addr v5, v3

    div-float/2addr v5, v7

    .line 820
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float v3, v5, v3

    goto :goto_0

    :pswitch_0
    sub-float/2addr v5, v3

    .line 817
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float v3, v5, v3

    goto :goto_0

    .line 814
    :pswitch_1
    iget v3, v2, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    goto :goto_0

    .line 823
    :cond_2
    iget v3, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_3

    .line 824
    iget v3, v2, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    goto :goto_0

    .line 825
    :cond_3
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4

    .line 826
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v5, v3

    goto :goto_0

    :cond_4
    move v3, v8

    .line 829
    :goto_0
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v5, v4, v0

    const/4 v6, 0x1

    if-gtz v5, :cond_5

    .line 831
    sget-object v1, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v5, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_1

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    .line 839
    iget v1, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    :goto_1
    move v8, v0

    goto :goto_2

    :pswitch_2
    sub-float/2addr v0, v4

    .line 836
    iget v1, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    goto :goto_1

    .line 833
    :pswitch_3
    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_1

    :goto_2
    const/4 v0, 0x2

    .line 842
    iput v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    .line 843
    :cond_5
    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_6

    .line 844
    iput v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 845
    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v8, v0

    goto :goto_3

    .line 846
    :cond_6
    iget v1, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_7

    .line 847
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float v8, v0, v1

    .line 848
    iput v6, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    :cond_7
    const/4 v0, -0x1

    .line 850
    iput v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 854
    :goto_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v8, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v6

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static checkZoomLevels(FFF)V
    .locals 0

    cmpl-float p0, p0, p1

    if-gez p0, :cond_1

    cmpl-float p0, p1, p2

    if-gez p0, :cond_0

    return-void

    .line 104
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MidZoom has to be less than MaxZoom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MinZoom has to be less than MidZoom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 865
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 871
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 870
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 872
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 873
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1010
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1004
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 905
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMatrixValues:[F

    aget p0, p0, p2

    return p0
.end method

.method private static hasDrawable(Landroid/widget/ImageView;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 124
    :cond_0
    sget-object v0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return v1

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported in PhotoView"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resetMatrix()V
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 913
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 914
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 918
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 921
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkImageViewScaleType()V

    .line 922
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 925
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    if-eqz v0, :cond_0

    .line 926
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 928
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    invoke-interface {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private static setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 142
    instance-of v0, p0, Lcom/yftech/car/widget/media/photo/photoview/IPhotoView;

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    .line 940
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 945
    :cond_0
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 946
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 947
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 948
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 950
    iget-object v3, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v1, v2

    int-to-float p1, p1

    div-float v4, v0, p1

    .line 955
    iget-object v5, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    .line 956
    iget-object v3, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sub-float/2addr v1, v2

    div-float/2addr v1, v7

    sub-float/2addr v0, p1

    div-float/2addr v0, v7

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 959
    :cond_1
    iget-object v5, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    .line 960
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 961
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 962
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v7

    mul-float/2addr p1, v3

    sub-float/2addr v0, p1

    div-float/2addr v0, v7

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 965
    :cond_2
    iget-object v5, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 966
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 967
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 968
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v7

    mul-float/2addr p1, v3

    sub-float/2addr v0, p1

    div-float/2addr v0, v7

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 972
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 973
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v4, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 975
    sget-object v0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 990
    :pswitch_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 977
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 978
    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 986
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 982
    :pswitch_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 998
    :goto_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->resetMatrix()V

    return-void

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canZoom()Z
    .locals 0

    .line 225
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return p0
.end method

.method public cleanup()V
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 250
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->cancelFling()V

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 261
    :cond_3
    iput-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 262
    iput-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 263
    iput-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 266
    iput-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 756
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 271
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 272
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 761
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 762
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getIPhotoViewImplementation()Lcom/yftech/car/widget/media/photo/photoview/IPhotoView;
    .locals 0

    return-object p0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->cleanup()V

    const-string p0, "PhotoViewAttacher"

    const-string v1, "ImageView no longer exists. You should not use this PhotoViewAttacher any more."

    .line 332
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public getMaxScale()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result p0

    return p0
.end method

.method public getMaximumScale()F
    .locals 0

    .line 369
    iget p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMaxScale:F

    return p0
.end method

.method public getMediumScale()F
    .locals 0

    .line 358
    iget p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMidScale:F

    return p0
.end method

.method public getMidScale()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result p0

    return p0
.end method

.method public getMinScale()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result p0

    return p0
.end method

.method public getMinimumScale()F
    .locals 0

    .line 347
    iget p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMinScale:F

    return p0
.end method

.method public getOnPhotoTapListener()Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnPhotoTapListener;

    return-object p0
.end method

.method public getOnViewTapListener()Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 0

    .line 676
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnViewTapListener;

    return-object p0
.end method

.method public getScale()F
    .locals 6

    .line 374
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result p0

    float-to-double v4, p0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p0, v1

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 880
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 881
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public onDrag(FF)V
    .locals 8

    .line 385
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/yftech/car/widget/media/photo/photoview/gestures/GestureDetector;

    invoke-interface {v0}, Lcom/yftech/car/widget/media/photo/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 389
    :cond_0
    sget-boolean v0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 390
    invoke-static {}, Lcom/yftech/car/widget/media/photo/photoview/log/LogManager;->getLogger()Lcom/yftech/car/widget/media/photo/photoview/log/Logger;

    move-result-object v0

    const-string v4, "PhotoViewAttacher"

    const-string v5, "onDrag: dx: %.2f. dy: %.2f"

    new-array v6, v2, [Ljava/lang/Object;

    .line 391
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 390
    invoke-interface {v0, v4, v5}, Lcom/yftech/car/widget/media/photo/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 395
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 396
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 407
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 408
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/yftech/car/widget/media/photo/photoview/gestures/GestureDetector;

    invoke-interface {v0}, Lcom/yftech/car/widget/media/photo/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v0

    if-nez v0, :cond_4

    .line 409
    iget v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_3

    :cond_2
    iget p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-ne p0, v3, :cond_5

    const/high16 p0, -0x40800000    # -1.0f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_5

    :cond_3
    if-eqz p2, :cond_5

    .line 413
    invoke-interface {p2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 417
    invoke-interface {p2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onFling(FFFF)V
    .locals 4

    .line 425
    sget-boolean v0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lcom/yftech/car/widget/media/photo/photoview/log/LogManager;->getLogger()Lcom/yftech/car/widget/media/photo/photoview/log/Logger;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFling. sX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " sY: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " Vx: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " Vy: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/yftech/car/widget/media/photo/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    .line 432
    new-instance p2, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;

    .line 433
    iget-object p2, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v0

    .line 434
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v1

    float-to-int p3, p3

    float-to-int p4, p4

    .line 433
    invoke-virtual {p2, v0, v1, p3, p4}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    .line 435
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    .line 440
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 443
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_1

    .line 444
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    .line 445
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    .line 446
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    .line 447
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    .line 456
    iget v5, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mIvTop:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mIvBottom:I

    if-ne v3, v5, :cond_0

    iget v5, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mIvLeft:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mIvRight:I

    if-eq v2, v5, :cond_2

    .line 459
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 462
    iput v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mIvTop:I

    .line 463
    iput v2, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mIvRight:I

    .line 464
    iput v3, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mIvBottom:I

    .line 465
    iput v4, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mIvLeft:I

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onScale(FFF)V
    .locals 6

    .line 475
    sget-boolean v0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Lcom/yftech/car/widget/media/photo/photoview/log/LogManager;->getLogger()Lcom/yftech/car/widget/media/photo/photoview/log/Logger;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 479
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 478
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-interface {v0, v1, v2}, Lcom/yftech/car/widget/media/photo/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 484
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 491
    sget-boolean v0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->isPlay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 492
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 493
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 495
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 524
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->downX:I

    sub-int/2addr p1, v0

    .line 525
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->downY:I

    sub-int/2addr v0, v2

    .line 526
    iget v2, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaledTouchSlop:I

    neg-int v2, v2

    if-le p1, v2, :cond_0

    iget v2, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaledTouchSlop:I

    if-ge p1, v2, :cond_0

    iget p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaledTouchSlop:I

    neg-int p1, p1

    if-le v0, p1, :cond_0

    iget p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaledTouchSlop:I

    if-ge v0, p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mIsClick:Z

    goto/16 :goto_3

    .line 529
    :pswitch_1
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mIsClick:Z

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->onTouch:Lcom/yftech/car/widget/media/photo/photoview/ImageOnTouch;

    if-eqz v0, :cond_3

    .line 549
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_2
    const-string v0, "onTouch: mIsClick is false"

    .line 558
    invoke-static {v0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    .line 565
    :cond_3
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v2, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 567
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v2, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMinScale:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    goto :goto_3

    .line 574
    :cond_4
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 576
    new-instance v1, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getScale()F

    move-result v6

    iget v7, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMinScale:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move v1, v3

    goto :goto_3

    .line 500
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->downX:I

    .line 501
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->downY:I

    .line 502
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mIsClick:Z

    if-eqz v0, :cond_5

    .line 506
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_5
    const-string p1, "PhotoViewAttacher"

    const-string v0, "onTouch getParent() returned null"

    .line 508
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_2
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->cancelFling()V

    .line 587
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/yftech/car/widget/media/photo/photoview/gestures/GestureDetector;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/yftech/car/widget/media/photo/photoview/gestures/GestureDetector;

    .line 588
    invoke-interface {p1, p2}, Lcom/yftech/car/widget/media/photo/photoview/gestures/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v1, v3

    .line 593
    :cond_7
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_9

    move v1, v3

    goto :goto_4

    .line 597
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " onTouch: mZoomEnabled=="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    :cond_9
    :goto_4
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0

    .line 610
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 284
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 288
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 289
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    const/4 p0, 0x1

    return p0

    .line 278
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Matrix cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 640
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    return-void
.end method

.method public setMaximumScale(F)V
    .locals 2

    .line 645
    iget v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 646
    iput p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMaxScale:F

    return-void
.end method

.method public setMediumScale(F)V
    .locals 2

    .line 633
    iget v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 634
    iput p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMidScale:F

    return-void
.end method

.method public setMidScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setMediumScale(F)V

    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 616
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2

    .line 621
    iget v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 622
    iput p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMinScale:F

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 218
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/yftech/car/widget/media/photo/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/photo/photoview/DefaultOnDoubleTapListener;-><init>(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;)V

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :goto_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnPhotoTapListener;

    return-void
.end method

.method public setOnTouchListener(Lcom/yftech/car/widget/media/photo/photoview/ImageOnTouch;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->onTouch:Lcom/yftech/car/widget/media/photo/photoview/ImageOnTouch;

    return-void
.end method

.method public setOnViewTapListener(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnViewTapListener;

    return-void
.end method

.method public setPhotoViewRotation(F)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 300
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setRotationBy(F)V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 319
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setRotationLocation(FFF)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 312
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 306
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    const/4 v0, 0x0

    .line 681
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 8

    .line 699
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 703
    iget v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 712
    new-instance p4, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getScale()F

    move-result v4

    move-object v2, p4

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 715
    :cond_1
    iget-object p4, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 716
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    goto :goto_1

    .line 705
    :cond_2
    :goto_0
    invoke-static {}, Lcom/yftech/car/widget/media/photo/photoview/log/LogManager;->getLogger()Lcom/yftech/car/widget/media/photo/photoview/log/Logger;

    move-result-object p0

    const-string p1, "PhotoViewAttacher"

    const-string p2, "Scale must be within the range of minScale and maxScale"

    .line 706
    invoke-interface {p0, p1, p2}, Lcom/yftech/car/widget/media/photo/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public setScale(FZ)V
    .locals 2

    .line 686
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 691
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 689
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 723
    invoke-static {p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 724
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 727
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/16 p1, 0xc8

    .line 888
    :cond_0
    iput p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    return-void
.end method

.method public setZoomable(Z)V
    .locals 0

    .line 733
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 734
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->update()V

    return-void
.end method

.method public update()V
    .locals 2

    .line 738
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 741
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_0

    .line 743
    invoke-static {v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 746
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 749
    :cond_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->resetMatrix()V

    :cond_1
    :goto_0
    return-void
.end method
