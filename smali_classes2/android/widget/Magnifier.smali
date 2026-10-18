.class public final Landroid/widget/Magnifier;
.super Ljava/lang/Object;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Magnifier$Callback;,
        Landroid/widget/Magnifier$InternalPopupWindow;,
        Landroid/widget/Magnifier$SurfaceInfo;
    }
.end annotation


# static fields
.field private static final NONEXISTENT_PREVIOUS_CONFIG_VALUE:I = -0x1

.field private static final sPixelCopyHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private final mBitmapHeight:I

.field private final mBitmapWidth:I

.field private mCallback:Landroid/widget/Magnifier$Callback;

.field private final mCenterZoomCoords:Landroid/graphics/Point;

.field private final mClampedCenterZoomCoords:Landroid/graphics/Point;

.field private mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

.field private final mLock:Ljava/lang/Object;

.field private mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

.field private final mPixelCopyRequestRect:Landroid/graphics/Rect;

.field private final mPrevPosInView:Landroid/graphics/PointF;

.field private final mPrevStartCoordsInSurface:Landroid/graphics/Point;

.field private final mView:Landroid/view/View;

.field private final mViewCoordinatesInSurface:[I

.field private mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

.field private final mWindowCoords:Landroid/graphics/Point;

.field private final mWindowCornerRadius:F

.field private final mWindowElevation:F

.field private final mWindowHeight:I

.field private final mWindowWidth:I

.field private final mZoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "magnifier pixel copy result handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    .line 130
    sget-object v0, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    .line 95
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mCenterZoomCoords:Landroid/graphics/Point;

    .line 98
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    .line 100
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    .line 102
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPrevPosInView:Landroid/graphics/PointF;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    .line 116
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    .line 117
    iget-object p1, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mWindowElevation:F

    .line 121
    invoke-direct {p0}, Landroid/widget/Magnifier;->getDeviceDefaultDialogCornerRadius()F

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mWindowCornerRadius:F

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1050122

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Landroid/widget/Magnifier;->mZoom:F

    .line 123
    iget p1, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    int-to-float p1, p1

    iget v0, p0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/widget/Magnifier;->mBitmapWidth:I

    .line 124
    iget p1, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    int-to-float p1, p1

    iget v0, p0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/widget/Magnifier;->mBitmapHeight:I

    const/4 p1, 0x2

    .line 126
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    return-void
.end method

.method private getDeviceDefaultDialogCornerRadius()F
    .locals 3

    .line 139
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object p0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x1030128

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 p0, 0x1

    .line 141
    new-array p0, p0, [I

    const/4 v1, 0x0

    const v2, 0x1010571

    aput v2, p0, v1

    invoke-virtual {v0, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 144
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public static getMagnifierDefaultSize()Landroid/graphics/PointF;
    .locals 4

    .line 756
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 758
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    const v3, 0x1050121

    .line 759
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    const v3, 0x105011f

    .line 760
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/PointF;->y:F

    return-object v2
.end method

.method public static synthetic lambda$performPixelCopy$0(Landroid/widget/Magnifier;Landroid/widget/Magnifier$InternalPopupWindow;ZIILandroid/graphics/Bitmap;I)V
    .locals 1

    .line 381
    iget-object p6, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter p6

    .line 382
    :try_start_0
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eq v0, p1, :cond_0

    .line 384
    monitor-exit p6

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 388
    iget-object p1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-virtual {p1, p3, p4}, Landroid/widget/Magnifier$InternalPopupWindow;->setContentPositionForNextDraw(II)V

    .line 390
    :cond_1
    iget-object p0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-virtual {p0, p5}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContent(Landroid/graphics/Bitmap;)V

    .line 391
    monitor-exit p6

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private obtainContentCoordinates(FF)V
    .locals 3

    .line 301
    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInSurface([I)V

    .line 302
    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v0, v0, v2

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 308
    iget-object v0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 310
    :goto_0
    iget-object v0, p0, Landroid/widget/Magnifier;->mCenterZoomCoords:Landroid/graphics/Point;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 311
    iget-object p1, p0, Landroid/widget/Magnifier;->mCenterZoomCoords:Landroid/graphics/Point;

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 315
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 316
    iget-object p2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 317
    iget-object p2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 319
    iget-object p2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    iget-object p2, p2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 320
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 322
    :cond_1
    iget-object p2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of p2, p2, Landroid/view/SurfaceView;

    if-eqz p2, :cond_2

    .line 324
    iget-object p2, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget p2, p2, v2

    neg-int p2, p2

    iget-object v0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v0, v0, v1

    neg-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 326
    :cond_2
    iget-object p2, p0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/widget/Magnifier;->mBitmapWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Magnifier;->mCenterZoomCoords:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/widget/Magnifier;->mBitmapWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 328
    iget-object p1, p0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget-object p0, p0, Landroid/widget/Magnifier;->mCenterZoomCoords:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private obtainSurfaces()V
    .locals 6

    .line 261
    sget-object v0, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    .line 262
    iget-object v1, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 264
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 268
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    .line 270
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getHeight()I

    move-result v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    .line 271
    new-instance v0, Landroid/widget/Magnifier$SurfaceInfo;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/widget/Magnifier$SurfaceInfo;-><init>(Landroid/view/Surface;IIZ)V

    .line 276
    :cond_0
    sget-object v1, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    .line 277
    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/SurfaceView;

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    check-cast v2, Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 279
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 280
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 282
    new-instance v2, Landroid/widget/Magnifier$SurfaceInfo;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v1, v5}, Landroid/widget/Magnifier$SurfaceInfo;-><init>(Landroid/view/Surface;IIZ)V

    move-object v1, v2

    .line 288
    :cond_1
    sget-object v2, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    if-eq v0, v2, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 289
    :goto_0
    iput-object v2, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    .line 290
    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/SurfaceView;

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 291
    :cond_3
    iput-object v0, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    return-void
.end method

.method private obtainWindowCoordinates()V
    .locals 4

    .line 334
    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 336
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget-object v2, p0, Landroid/widget/Magnifier;->mCenterZoomCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 337
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget-object v2, p0, Landroid/widget/Magnifier;->mCenterZoomCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 338
    iget-object v0, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    iget-object v1, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    if-eq v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 340
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object p0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    const/4 v2, 0x1

    aget p0, p0, v2

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_0
    return-void
.end method

.method private performPixelCopy(IIZ)V
    .locals 12

    .line 346
    iget-object v0, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->access$000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->access$000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 350
    :cond_0
    iget-object v0, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    .line 351
    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->access$300(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v0

    iget v1, p0, Landroid/widget/Magnifier;->mBitmapWidth:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 350
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 352
    iget-object v2, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    .line 353
    invoke-static {v2}, Landroid/widget/Magnifier$SurfaceInfo;->access$400(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v2

    iget v3, p0, Landroid/widget/Magnifier;->mBitmapHeight:I

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 352
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 358
    iget-object v3, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v3}, Landroid/widget/Magnifier$SurfaceInfo;->access$500(Landroid/widget/Magnifier$SurfaceInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    iget-object v1, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 360
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    .line 361
    invoke-static {v6}, Landroid/widget/Magnifier$SurfaceInfo;->access$300(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    .line 362
    invoke-static {v7}, Landroid/widget/Magnifier$SurfaceInfo;->access$400(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v7

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 364
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v4}, Landroid/widget/Magnifier$SurfaceInfo;->access$300(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v5}, Landroid/widget/Magnifier$SurfaceInfo;->access$400(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 366
    :goto_0
    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 367
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 366
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 368
    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 369
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 368
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 372
    iget-object v1, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    iget v3, p0, Landroid/widget/Magnifier;->mBitmapWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/Magnifier;->mBitmapHeight:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 376
    iget-object v7, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    .line 377
    iget v0, p0, Landroid/widget/Magnifier;->mBitmapWidth:I

    iget v1, p0, Landroid/widget/Magnifier;->mBitmapHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 378
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 379
    iget-object v1, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v1}, Landroid/widget/Magnifier$SurfaceInfo;->access$000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;

    move-object v5, v3

    move-object v6, p0

    move v8, p3

    move-object v11, v0

    invoke-direct/range {v5 .. v11}, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;-><init>(Landroid/widget/Magnifier;Landroid/widget/Magnifier$InternalPopupWindow;ZIILandroid/graphics/Bitmap;)V

    sget-object p3, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    .line 393
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p3

    .line 379
    invoke-static {v1, v2, v0, v3, p3}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 394
    iget-object p3, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 395
    iget-object p0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iput p2, p0, Landroid/graphics/Point;->y:I

    return-void

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 189
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-virtual {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->destroy()V

    const/4 v1, 0x0

    .line 192
    iput-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    .line 193
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevPosInView:Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 195
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevPosInView:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 196
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 197
    iget-object p0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iput v1, p0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 193
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public getContent()Landroid/graphics/Bitmap;
    .locals 4

    .line 724
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 727
    :cond_0
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->access$700(Landroid/widget/Magnifier$InternalPopupWindow;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 728
    :try_start_0
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->access$800(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    iget p0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    const/4 v3, 0x1

    invoke-static {v1, v2, p0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 729
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHeight()I
    .locals 0

    .line 225
    iget p0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 218
    iget p0, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    return p0
.end method

.method public getWindowCoords()Landroid/graphics/Point;
    .locals 4

    .line 244
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 247
    :cond_0
    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 248
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v2}, Landroid/widget/Magnifier$InternalPopupWindow;->access$100(Landroid/widget/Magnifier$InternalPopupWindow;)I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object p0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    .line 249
    invoke-static {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->access$200(Landroid/widget/Magnifier$InternalPopupWindow;)I

    move-result p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v0

    invoke-direct {v1, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getWindowPositionOnScreen()Landroid/graphics/Rect;
    .locals 5

    const/4 v0, 0x2

    .line 739
    new-array v1, v0, [I

    .line 740
    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 741
    new-array v0, v0, [I

    .line 742
    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInSurface([I)V

    .line 744
    iget-object v2, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    aget v4, v1, v3

    add-int/2addr v2, v4

    aget v3, v0, v3

    sub-int/2addr v2, v3

    .line 745
    iget-object v3, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    aget v1, v1, v4

    add-int/2addr v3, v1

    aget v0, v0, v4

    sub-int/2addr v3, v0

    .line 746
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    add-int/2addr v1, v2

    iget p0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    add-int/2addr p0, v3

    invoke-direct {v0, v2, v3, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getZoom()F
    .locals 0

    .line 234
    iget p0, p0, Landroid/widget/Magnifier;->mZoom:F

    return p0
.end method

.method public setOnOperationCompleteCallback(Landroid/widget/Magnifier$Callback;)V
    .locals 1

    .line 711
    iput-object p1, p0, Landroid/widget/Magnifier;->mCallback:Landroid/widget/Magnifier$Callback;

    .line 712
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v0, :cond_0

    .line 713
    iget-object p0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {p0, p1}, Landroid/widget/Magnifier$InternalPopupWindow;->access$602(Landroid/widget/Magnifier$InternalPopupWindow;Landroid/widget/Magnifier$Callback;)Landroid/widget/Magnifier$Callback;

    :cond_0
    return-void
.end method

.method public show(FF)V
    .locals 19

    move-object/from16 v0, p0

    .line 160
    iget-object v1, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    move/from16 v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 161
    iget-object v3, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move/from16 v4, p2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 163
    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier;->obtainSurfaces()V

    .line 164
    invoke-direct {v0, v1, v2}, Landroid/widget/Magnifier;->obtainContentCoordinates(FF)V

    .line 165
    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier;->obtainWindowCoordinates()V

    .line 167
    iget-object v3, v0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/widget/Magnifier;->mBitmapWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 168
    iget-object v4, v0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, v0, Landroid/widget/Magnifier;->mBitmapHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 169
    iget-object v5, v0, Landroid/widget/Magnifier;->mPrevPosInView:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v1, v5

    if-nez v5, :cond_0

    iget-object v5, v0, Landroid/widget/Magnifier;->mPrevPosInView:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_2

    .line 170
    :cond_0
    iget-object v5, v0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v5, :cond_1

    .line 171
    iget-object v5, v0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 172
    :try_start_0
    new-instance v15, Landroid/widget/Magnifier$InternalPopupWindow;

    iget-object v6, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v6, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v8

    iget-object v6, v0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    .line 173
    invoke-static {v6}, Landroid/widget/Magnifier$SurfaceInfo;->access$000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v9

    iget v10, v0, Landroid/widget/Magnifier;->mWindowWidth:I

    iget v11, v0, Landroid/widget/Magnifier;->mWindowHeight:I

    iget v12, v0, Landroid/widget/Magnifier;->mWindowElevation:F

    iget v13, v0, Landroid/widget/Magnifier;->mWindowCornerRadius:F

    .line 175
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v14

    iget-object v6, v0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    move/from16 v17, v2

    iget-object v2, v0, Landroid/widget/Magnifier;->mCallback:Landroid/widget/Magnifier$Callback;

    move-object/from16 v16, v6

    move-object v6, v15

    move/from16 v18, v1

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v2

    invoke-direct/range {v6 .. v16}, Landroid/widget/Magnifier$InternalPopupWindow;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/Surface;IIFFLandroid/os/Handler;Ljava/lang/Object;Landroid/widget/Magnifier$Callback;)V

    iput-object v1, v0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    .line 177
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move/from16 v18, v1

    move/from16 v17, v2

    :goto_0
    const/4 v1, 0x1

    .line 179
    invoke-direct {v0, v3, v4, v1}, Landroid/widget/Magnifier;->performPixelCopy(IIZ)V

    .line 180
    iget-object v1, v0, Landroid/widget/Magnifier;->mPrevPosInView:Landroid/graphics/PointF;

    move/from16 v2, v18

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 181
    iget-object v0, v0, Landroid/widget/Magnifier;->mPrevPosInView:Landroid/graphics/PointF;

    move/from16 v1, v17

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_2
    return-void
.end method

.method public update()V
    .locals 3

    .line 206
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Landroid/widget/Magnifier;->obtainSurfaces()V

    .line 209
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/Magnifier;->performPixelCopy(IIZ)V

    :cond_0
    return-void
.end method
