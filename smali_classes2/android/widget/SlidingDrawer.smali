.class public Landroid/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlidingDrawer$DrawerToggler;,
        Landroid/widget/SlidingDrawer$OnDrawerScrollListener;,
        Landroid/widget/SlidingDrawer$OnDrawerCloseListener;,
        Landroid/widget/SlidingDrawer$OnDrawerOpenListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

.field private final mSlidingRunnable:Ljava/lang/Runnable;

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 212
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 973
    new-instance v0, Landroid/widget/SlidingDrawer$1;

    invoke-direct {v0, p0}, Landroid/widget/SlidingDrawer$1;-><init>(Landroid/widget/SlidingDrawer;)V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    .line 214
    sget-object v0, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 217
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    if-ne p4, p3, :cond_0

    move p4, p3

    goto :goto_0

    :cond_0
    move p4, p2

    .line 218
    :goto_0
    iput-boolean p4, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 p4, 0x0

    .line 219
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    const/4 v0, 0x2

    .line 220
    invoke-virtual {p1, v0, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    float-to-int p4, p4

    iput p4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    const/4 p4, 0x3

    .line 221
    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    const/4 p4, 0x6

    .line 222
    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    const/4 p3, 0x4

    .line 224
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_3

    const/4 p4, 0x5

    .line 230
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-eqz p4, :cond_2

    if-eq p3, p4, :cond_1

    .line 241
    iput p3, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    .line 242
    iput p4, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    .line 244
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x40c00000    # 6.0f

    mul-float/2addr p4, p3

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 245
    iput p4, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float/2addr p4, p3

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 246
    iput p4, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    const/high16 p4, 0x43160000    # 150.0f

    mul-float/2addr p4, p3

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 247
    iput p4, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    const/high16 p4, 0x43480000    # 200.0f

    mul-float/2addr p4, p3

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 248
    iput p4, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    const/high16 p4, 0x44fa0000    # 2000.0f

    mul-float/2addr p4, p3

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 249
    iput p4, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    const/high16 p4, 0x447a0000    # 1000.0f

    mul-float/2addr p3, p4

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 250
    iput p3, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    .line 252
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    invoke-virtual {p0, p2}, Landroid/widget/SlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    return-void

    .line 237
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The content and handle attributes must refer to different children."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The content attribute is required and must refer to a valid child."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 226
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The handle attribute is required and must refer to a valid child."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$100(Landroid/widget/SlidingDrawer;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return p0
.end method

.method static synthetic access$200(Landroid/widget/SlidingDrawer;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    return p0
.end method

.method static synthetic access$300(Landroid/widget/SlidingDrawer;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(IZ)V
    .locals 2

    .line 499
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 500
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    return-void
.end method

.method private animateOpen(IZ)V
    .locals 2

    .line 504
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 505
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    return-void
.end method

.method private closeDrawer()V
    .locals 2

    const/16 v0, -0x2712

    .line 841
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 842
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 845
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 849
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 850
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_1

    .line 851
    iget-object p0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    invoke-interface {p0}, Landroid/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    :cond_1
    return-void
.end method

.method private doAnimation()V
    .locals 4

    .line 698
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_3

    .line 699
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->incrementAnimation()V

    .line 700
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 701
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 702
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    goto :goto_1

    .line 703
    :cond_1
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 704
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 705
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    goto :goto_1

    .line 707
    :cond_2
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 708
    iget-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 709
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/SlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private incrementAnimation()V
    .locals 7

    .line 715
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 716
    iget-wide v2, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 717
    iget v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 718
    iget v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 719
    iget v5, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    .line 720
    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 721
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 722
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    return-void
.end method

.method private moveHandle(I)V
    .locals 7

    .line 584
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 586
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    const/16 v3, -0x2712

    const/16 v4, -0x2711

    if-eqz v1, :cond_4

    if-ne p1, v4, :cond_0

    .line 588
    iget p1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 589
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_2

    :cond_0
    if-ne p1, v3, :cond_1

    .line 591
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr p1, v1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr p1, v1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr p1, v1

    .line 592
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    .line 591
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 593
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_2

    .line 595
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v3, p1, v1

    .line 597
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v4, :cond_2

    .line 598
    iget p1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, p1, v1

    goto :goto_0

    .line 599
    :cond_2
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr p1, v4

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr p1, v4

    iget v4, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr p1, v4

    sub-int/2addr p1, v1

    if-le v3, p1, :cond_3

    .line 600
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v3, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr p1, v3

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr p1, v3

    iget v3, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr p1, v3

    sub-int v3, p1, v1

    .line 602
    :cond_3
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 604
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 605
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 607
    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 608
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 610
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 611
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 612
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr p1, v3

    .line 611
    invoke-virtual {v1, v2, v0, v4, p1}, Landroid/graphics/Rect;->union(IIII)V

    .line 614
    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    :cond_4
    if-ne p1, v4, :cond_5

    .line 618
    iget p1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 619
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto :goto_2

    :cond_5
    if-ne p1, v3, :cond_6

    .line 621
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v1, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr p1, v1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr p1, v1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr p1, v1

    .line 622
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    .line 621
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 623
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto :goto_2

    .line 625
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v3, p1, v1

    .line 627
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v4, :cond_7

    .line 628
    iget p1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, p1, v1

    goto :goto_1

    .line 629
    :cond_7
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v4, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr p1, v4

    iget v4, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr p1, v4

    iget v4, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr p1, v4

    sub-int/2addr p1, v1

    if-le v3, p1, :cond_8

    .line 630
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v3, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr p1, v3

    iget v3, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr p1, v3

    iget v3, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr p1, v3

    sub-int v3, p1, v1

    .line 632
    :cond_8
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 634
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 635
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 637
    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 638
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 640
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 641
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v3

    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 642
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v3

    .line 641
    invoke-virtual {v1, v0, v2, p1, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 644
    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    :goto_2
    return-void
.end method

.method private openDrawer()V
    .locals 2

    const/16 v0, -0x2711

    .line 856
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 857
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 859
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 863
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 865
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_1

    .line 866
    iget-object p0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    invoke-interface {p0}, Landroid/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    :cond_1
    return-void
.end method

.method private performFling(IFZZ)V
    .locals 2

    int-to-float v0, p1

    .line 510
    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 511
    iput p2, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 513
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    .line 514
    iget p3, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float p3, p3

    cmpl-float p3, p2, p3

    if-gtz p3, :cond_2

    iget p3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 515
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    :goto_0
    add-int/2addr p3, v0

    if-le p1, p3, :cond_1

    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int p1, p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    goto :goto_1

    .line 525
    :cond_1
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float p1, p2, v1

    if-lez p1, :cond_7

    .line 527
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_3

    .line 519
    :cond_2
    :goto_1
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float p1, p2, v1

    if-gez p1, :cond_7

    .line 521
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_3

    :cond_3
    if-nez p3, :cond_6

    .line 531
    iget p3, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float p3, p3

    cmpl-float p3, p2, p3

    if-gtz p3, :cond_5

    .line 532
    iget-boolean p3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result p3

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result p3

    :goto_2
    div-int/lit8 p3, p3, 0x2

    if-le p1, p3, :cond_6

    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int p1, p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_6

    .line 535
    :cond_5
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float p1, p2, v1

    if-gez p1, :cond_7

    .line 537
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_3

    .line 542
    :cond_6
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float p1, p2, v1

    if-lez p1, :cond_7

    .line 544
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 549
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 550
    iput-wide p1, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v0, 0x10

    add-long/2addr p1, v0

    .line 551
    iput-wide p1, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    const/4 p1, 0x1

    .line 552
    iput-boolean p1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 553
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 554
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/SlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 555
    invoke-direct {p0, p4}, Landroid/widget/SlidingDrawer;->stopTracking(Z)V

    return-void
.end method

.method private prepareContent()V
    .locals 7

    .line 650
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 657
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 658
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    .line 659
    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 660
    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v5

    .line 661
    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    iget v6, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 662
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 661
    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    .line 663
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget p0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr p0, v1

    .line 664
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p0, v1

    .line 663
    invoke-virtual {v0, v2, v3, v4, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 666
    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 667
    iget v4, p0, Landroid/widget/SlidingDrawer;->mRight:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v5

    .line 668
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v5, v6

    .line 669
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 668
    invoke-virtual {v0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 670
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v3, v1

    iget p0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr p0, v1

    .line 671
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p0, v1

    .line 672
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 670
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/view/View;->layout(IIII)V

    .line 677
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 678
    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    :cond_3
    const/16 p0, 0x8

    .line 680
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private prepareTracking(I)V
    .locals 5

    const/4 v0, 0x1

    .line 559
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 560
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 561
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    xor-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 563
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 564
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 565
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 566
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    :goto_0
    sub-int/2addr v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_0

    :goto_1
    add-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 567
    iget p1, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int p1, p1

    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 568
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 569
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 570
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 571
    iput-wide v1, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    .line 572
    iput-wide v1, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 573
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    goto :goto_2

    .line 575
    :cond_1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 576
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 577
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 579
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    :goto_2
    return-void
.end method

.method private stopTracking(Z)V
    .locals 2

    .line 684
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 685
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-eqz p1, :cond_0

    .line 687
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz p1, :cond_0

    .line 688
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {p1}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 691
    :cond_0
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 692
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 693
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 3

    .line 799
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 800
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 802
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 804
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/SlidingDrawer;->animateClose(IZ)V

    if-eqz v0, :cond_2

    .line 807
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_2
    return-void
.end method

.method public animateOpen()V
    .locals 3

    .line 821
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 822
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 824
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 826
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/SlidingDrawer;->animateOpen(IZ)V

    const/16 v1, 0x20

    .line 828
    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    if-eqz v0, :cond_2

    .line 831
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_2
    return-void
.end method

.method public animateToggle()V
    .locals 1

    .line 754
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 755
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    goto :goto_0

    .line 757
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateClose()V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 0

    .line 784
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 785
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 786
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 304
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getDrawingTime()J

    move-result-wide v0

    .line 305
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 306
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 308
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 310
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_6

    .line 326
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    .line 311
    :cond_1
    :goto_0
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    const/4 p0, 0x0

    if-eqz v3, :cond_2

    .line 314
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v5, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 316
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0, v5, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 319
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v3, :cond_4

    move v4, v5

    goto :goto_1

    .line 320
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    :goto_1
    if-eqz v3, :cond_5

    .line 321
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v2, v3

    int-to-float v5, v2

    .line 320
    :cond_5
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 322
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 323
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    :goto_2
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 837
    const-class p0, Landroid/widget/SlidingDrawer;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContent()Landroid/view/View;
    .locals 0

    .line 917
    iget-object p0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    return-object p0
.end method

.method public getHandle()Landroid/view/View;
    .locals 0

    .line 907
    iget-object p0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    return-object p0
.end method

.method public isMoving()Z
    .locals 1

    .line 953
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isOpened()Z
    .locals 0

    .line 944
    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    return p0
.end method

.method public lock()V
    .locals 1

    const/4 v0, 0x1

    .line 935
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 259
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 260
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Landroid/widget/SlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget v0, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 267
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 271
    iget-object p0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 268
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The content attribute is must refer to an existing child."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 261
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The handle attribute is must refer to an existing child."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 371
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 375
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 380
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 381
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 383
    invoke-virtual {v5, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 384
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v6, :cond_1

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 389
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 391
    invoke-virtual {v5, v1}, Landroid/view/View;->setPressed(Z)V

    .line 393
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 396
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 400
    :cond_2
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_3

    .line 401
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    float-to-int v2, v3

    sub-int/2addr v2, v0

    .line 402
    iput v2, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 403
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    goto :goto_0

    .line 405
    :cond_3
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    float-to-int v2, v2

    sub-int/2addr v2, v0

    .line 406
    iput v2, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 407
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 409
    :goto_0
    iget-object p0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 332
    iget-boolean p1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 339
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 347
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 349
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sub-int/2addr p4, p2

    .line 350
    div-int/lit8 p4, p4, 0x2

    .line 351
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v1, :cond_1

    iget p5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_0

    :cond_1
    sub-int/2addr p5, p3

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr p5, v1

    .line 353
    :goto_0
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v1, p3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v4, p3

    .line 354
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 353
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 356
    :cond_2
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v1, :cond_3

    iget p4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_1

    :cond_3
    sub-int/2addr p4, p2

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr p4, v1

    :goto_1
    sub-int/2addr p5, p3

    .line 357
    div-int/lit8 p5, p5, 0x2

    .line 359
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v1, p2

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v3, p2

    .line 360
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 361
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 359
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int/2addr p2, p4

    add-int/2addr p3, p5

    .line 364
    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    iput p2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 276
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 277
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 279
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 280
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 286
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 287
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 289
    iget-boolean p1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 290
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int p1, v3, p1

    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr p1, v0

    .line 291
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 292
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 291
    invoke-virtual {v0, v2, p1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int p1, v1, p1

    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr p1, v0

    .line 295
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 296
    invoke-static {v3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 295
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 299
    :goto_0
    invoke-virtual {p0, v1, v3}, Landroid/widget/SlidingDrawer;->setMeasuredDimension(II)V

    return-void

    .line 283
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 417
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 421
    :cond_0
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    .line 422
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    .line 426
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    goto/16 :goto_a

    .line 430
    :pswitch_1
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 431
    iget v3, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 433
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 434
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 437
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    cmpg-float v6, v3, v5

    if-gez v6, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    cmpg-float v5, v0, v5

    if-gez v5, :cond_3

    neg-float v0, v0

    .line 443
    :cond_3
    iget v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_7

    .line 444
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v0, v0

    goto :goto_3

    :cond_4
    cmpg-float v6, v0, v5

    if-gez v6, :cond_5

    move v6, v1

    goto :goto_2

    :cond_5
    move v6, v2

    :goto_2
    cmpg-float v5, v3, v5

    if-gez v5, :cond_6

    neg-float v3, v3

    .line 451
    :cond_6
    iget v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_7

    .line 452
    iget v3, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v3, v3

    :cond_7
    :goto_3
    float-to-double v7, v0

    float-to-double v9, v3

    .line 456
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v0, v7

    if-eqz v6, :cond_8

    neg-float v0, v0

    .line 461
    :cond_8
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 462
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 464
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_14

    if-eqz v4, :cond_a

    .line 465
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v6, :cond_9

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v7

    if-lt v3, v6, :cond_c

    :cond_9
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v6, :cond_12

    iget v6, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v6, v7

    if-le v3, v6, :cond_12

    goto :goto_4

    :cond_a
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v6, :cond_b

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v7

    if-lt v5, v6, :cond_c

    :cond_b
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v6, :cond_12

    iget v6, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v7, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_12

    .line 472
    :cond_c
    :goto_4
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    if-eqz v6, :cond_10

    .line 473
    invoke-virtual {p0, v2}, Landroid/widget/SlidingDrawer;->playSoundEffect(I)V

    .line 475
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_e

    if-eqz v4, :cond_d

    goto :goto_5

    :cond_d
    move v3, v5

    .line 476
    :goto_5
    invoke-direct {p0, v3, v1}, Landroid/widget/SlidingDrawer;->animateClose(IZ)V

    goto :goto_a

    :cond_e
    if-eqz v4, :cond_f

    goto :goto_6

    :cond_f
    move v3, v5

    .line 478
    :goto_6
    invoke-direct {p0, v3, v1}, Landroid/widget/SlidingDrawer;->animateOpen(IZ)V

    goto :goto_a

    :cond_10
    if-eqz v4, :cond_11

    goto :goto_7

    :cond_11
    move v3, v5

    .line 481
    :goto_7
    invoke-direct {p0, v3, v0, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    goto :goto_a

    :cond_12
    if-eqz v4, :cond_13

    goto :goto_8

    :cond_13
    move v3, v5

    .line 485
    :goto_8
    invoke-direct {p0, v3, v0, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    goto :goto_a

    :cond_14
    if-eqz v4, :cond_15

    goto :goto_9

    :cond_15
    move v3, v5

    .line 488
    :goto_9
    invoke-direct {p0, v3, v0, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    .line 495
    :cond_16
    :goto_a
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-nez v0, :cond_18

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_b

    :cond_17
    move v1, v2

    :cond_18
    :goto_b
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .line 769
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    .line 770
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 771
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    const/16 v0, 0x20

    .line 773
    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .locals 0

    .line 885
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    return-void
.end method

.method public setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .locals 0

    .line 876
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    return-void
.end method

.method public setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .locals 0

    .line 897
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 735
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 736
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    goto :goto_0

    .line 738
    :cond_0
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 740
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 741
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    return-void
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x0

    .line 926
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return-void
.end method
