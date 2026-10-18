.class public Landroid/widget/StackView;
.super Landroid/widget/AdapterViewAnimator;
.source "StackView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/StackView$HolographicHelper;,
        Landroid/widget/StackView$LayoutParams;,
        Landroid/widget/StackView$StackSlider;,
        Landroid/widget/StackView$StackFrame;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0x190

.field private static final FRAME_PADDING:I = 0x4

.field private static final GESTURE_NONE:I = 0x0

.field private static final GESTURE_SLIDE_DOWN:I = 0x2

.field private static final GESTURE_SLIDE_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final ITEMS_SLIDE_DOWN:I = 0x1

.field private static final ITEMS_SLIDE_UP:I = 0x0

.field private static final MINIMUM_ANIMATION_DURATION:I = 0x32

.field private static final MIN_TIME_BETWEEN_INTERACTION_AND_AUTOADVANCE:I = 0x1388

.field private static final MIN_TIME_BETWEEN_SCROLLS:J = 0x64L

.field private static final NUM_ACTIVE_VIEWS:I = 0x5

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.0f

.field private static final PERSPECTIVE_SHIFT_FACTOR_X:F = 0.1f

.field private static final PERSPECTIVE_SHIFT_FACTOR_Y:F = 0.1f

.field private static final SLIDE_UP_RATIO:F = 0.7f

.field private static final STACK_RELAYOUT_DURATION:I = 0x64

.field private static final SWIPE_THRESHOLD_RATIO:F = 0.2f

.field private static sHolographicHelper:Landroid/widget/StackView$HolographicHelper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivePointerId:I

.field private mClickColor:I

.field private mClickFeedback:Landroid/widget/ImageView;

.field private mClickFeedbackIsValid:Z

.field private mFirstLayoutHappened:Z

.field private mFramePadding:I

.field private mHighlight:Landroid/widget/ImageView;

.field private mInitialX:F

.field private mInitialY:F

.field private mLastInteractionTime:J

.field private mLastScrollTime:J

.field private mMaximumVelocity:I

.field private mNewPerspectiveShiftX:F

.field private mNewPerspectiveShiftY:F

.field private mPerspectiveShiftX:F

.field private mPerspectiveShiftY:F

.field private mResOutColor:I

.field private mSlideAmount:I

.field private mStackMode:I

.field private mStackSlider:Landroid/widget/StackView$StackSlider;

.field private mSwipeGestureType:I

.field private mSwipeThreshold:I

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTransitionIsSetup:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYVelocity:I

.field private final stackInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101043e

    .line 162
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 176
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, "StackView"

    .line 53
    iput-object v0, p0, Landroid/widget/StackView;->TAG:Ljava/lang/String;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 129
    iput v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 135
    iput-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 142
    iput-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 144
    iput-boolean v0, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    const-wide/16 v1, 0x0

    .line 145
    iput-wide v1, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 149
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    .line 177
    sget-object v1, Lcom/android/internal/R$styleable;->StackView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 180
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/widget/StackView;->mResOutColor:I

    .line 182
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/widget/StackView;->mClickColor:I

    .line 185
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    invoke-direct {p0}, Landroid/widget/StackView;->initStackView()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Landroid/widget/StackView;)I
    .locals 0

    .line 52
    iget p0, p0, Landroid/widget/StackView;->mStackMode:I

    return p0
.end method

.method static synthetic access$200(Landroid/widget/StackView;)I
    .locals 0

    .line 52
    iget p0, p0, Landroid/widget/StackView;->mSlideAmount:I

    return p0
.end method

.method private beginGestureIfNeeded(F)V
    .locals 9

    .line 657
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/widget/StackView;->mTouchSlop:I

    if-le v0, v1, :cond_12

    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v0, :cond_12

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 659
    :goto_0
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelLongPress()V

    .line 660
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->requestDisallowInterceptTouchEvent(Z)V

    .line 662
    iget-object v2, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v2, :cond_1

    return-void

    .line 663
    :cond_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v2

    .line 666
    iget v3, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v4, 0x0

    if-nez v3, :cond_4

    if-ne p1, v0, :cond_3

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v1

    goto :goto_2

    :cond_4
    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 672
    :goto_2
    iget-boolean v5, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v5, :cond_7

    if-ne v2, v1, :cond_7

    iget v5, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v5, :cond_5

    if-eq p1, v1, :cond_6

    :cond_5
    iget v5, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v5, v1, :cond_7

    if-ne p1, v0, :cond_7

    :cond_6
    move v5, v1

    goto :goto_3

    :cond_7
    move v5, v4

    .line 675
    :goto_3
    iget-boolean v6, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v6, :cond_a

    if-ne v2, v1, :cond_a

    iget v6, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v6, v1, :cond_8

    if-eq p1, v1, :cond_9

    :cond_8
    iget v6, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v6, :cond_a

    if-ne p1, v0, :cond_a

    :cond_9
    move v6, v1

    goto :goto_4

    :cond_a
    move v6, v4

    .line 680
    :goto_4
    iget-boolean v7, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v7, :cond_c

    if-nez v6, :cond_c

    if-nez v5, :cond_c

    :cond_b
    move v0, v4

    goto :goto_6

    .line 682
    :cond_c
    iget v7, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v7, v3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_e

    if-eqz v6, :cond_d

    goto :goto_5

    .line 685
    :cond_d
    iget v6, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v6, v3

    sub-int/2addr v2, v1

    if-eq v6, v2, :cond_f

    if-eqz v5, :cond_b

    goto :goto_6

    :cond_e
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    :cond_f
    :goto_6
    if-nez v0, :cond_10

    goto :goto_7

    :cond_10
    move v1, v4

    .line 691
    :goto_7
    iput-boolean v1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 693
    invoke-virtual {p0, v3}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_11

    return-void

    .line 696
    :cond_11
    invoke-direct {p0, v1, v0}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 699
    iput p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 700
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelHandleClick()V

    :cond_12
    return-void
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)V
    .locals 8

    .line 810
    iget v0, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 811
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 812
    iget v0, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 815
    iget-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 817
    iget-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 820
    :cond_0
    iget-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 822
    iput-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 825
    :cond_1
    iget v0, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-le p1, v0, :cond_3

    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v0, v0, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v0, :cond_3

    .line 829
    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 832
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez p1, :cond_2

    .line 833
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_0

    .line 835
    :cond_2
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 837
    :goto_0
    iget-object p1, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    goto/16 :goto_7

    .line 838
    :cond_3
    iget v0, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    neg-int v0, v0

    const/4 v3, 0x1

    if-ge p1, v0, :cond_5

    iget p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne p1, v3, :cond_5

    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget p1, p1, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez p1, :cond_5

    .line 842
    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 845
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez p1, :cond_4

    .line 846
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_1

    .line 848
    :cond_4
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 851
    :goto_1
    iget-object p1, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    goto/16 :goto_7

    .line 852
    :cond_5
    iget p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-ne p1, v3, :cond_9

    .line 855
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne p1, v3, :cond_6

    goto :goto_2

    :cond_6
    move v0, v4

    .line 856
    :goto_2
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget p1, p1, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz p1, :cond_7

    goto :goto_3

    .line 859
    :cond_7
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p1}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_4

    .line 857
    :cond_8
    :goto_3
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p1}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 862
    :goto_4
    new-instance v5, Landroid/widget/StackView$StackSlider;

    iget-object v6, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v5, p0, v6}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    const-string v6, "YProgress"

    .line 863
    new-array v7, v3, [F

    aput v0, v7, v2

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v6, "XProgress"

    .line 864
    new-array v7, v3, [F

    aput v4, v7, v2

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 865
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    invoke-static {v5, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v3, p1

    .line 867
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 868
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 869
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_7

    .line 870
    :cond_9
    iget p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne p1, v1, :cond_d

    .line 872
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne p1, v3, :cond_a

    move v0, v4

    .line 874
    :cond_a
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-eq p1, v3, :cond_c

    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget p1, p1, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz p1, :cond_b

    goto :goto_5

    .line 877
    :cond_b
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p1}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_6

    .line 875
    :cond_c
    :goto_5
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p1}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 880
    :goto_6
    new-instance v5, Landroid/widget/StackView$StackSlider;

    iget-object v6, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v5, p0, v6}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    const-string v6, "YProgress"

    .line 881
    new-array v7, v3, [F

    aput v0, v7, v2

    .line 882
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v6, "XProgress"

    .line 883
    new-array v7, v3, [F

    aput v4, v7, v2

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 884
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    invoke-static {v5, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v3, p1

    .line 886
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 887
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_d
    :goto_7
    const/4 p1, -0x1

    .line 890
    iput p1, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 891
    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    return-void
.end method

.method private initStackView()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 190
    invoke-virtual {p0, v1, v0}, Landroid/widget/StackView;->configureViewAnimator(II)V

    .line 191
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->setStaticTransformationsEnabled(Z)V

    .line 192
    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mTouchSlop:I

    .line 194
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    const/4 v1, -0x1

    .line 195
    iput v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 197
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    .line 198
    iget-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v1, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 201
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    .line 202
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v1, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 204
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    new-instance v2, Landroid/widget/StackView$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;)V

    iput-object v2, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    .line 208
    sget-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    if-nez v2, :cond_0

    .line 209
    new-instance v2, Landroid/widget/StackView$HolographicHelper;

    iget-object v3, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/StackView$HolographicHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    :cond_0
    const/4 v2, 0x0

    .line 211
    invoke-virtual {p0, v2}, Landroid/widget/StackView;->setClipChildren(Z)V

    .line 212
    invoke-virtual {p0, v2}, Landroid/widget/StackView;->setClipToPadding(Z)V

    .line 217
    iput v0, p0, Landroid/widget/StackView;->mStackMode:I

    .line 220
    iput v1, p0, Landroid/widget/StackView;->mWhichChild:I

    .line 224
    iget-object v0, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 225
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Landroid/widget/StackView;->mFramePadding:I

    return-void
.end method

.method private measureChildren()V
    .locals 13

    .line 1135
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v0

    .line 1137
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v1

    .line 1138
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v2

    int-to-float v3, v1

    const v4, 0x3f666666    # 0.9f

    mul-float v5, v3, v4

    .line 1140
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Landroid/widget/StackView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/StackView;->mPaddingRight:I

    sub-int/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v4, v6

    .line 1142
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v7, p0, Landroid/widget/StackView;->mPaddingTop:I

    sub-int/2addr v4, v7

    iget v7, p0, Landroid/widget/StackView;->mPaddingBottom:I

    sub-int/2addr v4, v7

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v7, v0, :cond_2

    .line 1149
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/high16 v11, -0x80000000

    .line 1150
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1151
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1150
    invoke-virtual {v10, v12, v11}, Landroid/view/View;->measure(II)V

    .line 1153
    iget-object v11, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eq v10, v11, :cond_1

    iget-object v11, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    if-eq v10, v11, :cond_1

    .line 1154
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1155
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-le v11, v8, :cond_0

    move v8, v11

    :cond_0
    if-le v10, v9, :cond_1

    move v9, v10

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v7

    .line 1165
    iput v3, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    mul-float/2addr v6, v7

    .line 1166
    iput v6, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    if-lez v8, :cond_3

    if-lez v0, :cond_3

    if-ge v8, v5, :cond_3

    sub-int/2addr v1, v8

    int-to-float v1, v1

    .line 1170
    iput v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    :cond_3
    if-lez v9, :cond_4

    if-lez v0, :cond_4

    if-ge v9, v4, :cond_4

    sub-int/2addr v2, v9

    int-to-float v0, v2

    .line 1174
    iput v0, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    :cond_4
    return-void
.end method

.method private onLayout()V
    .locals 2

    .line 562
    iget-boolean v0, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 563
    iput-boolean v0, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 564
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    :cond_0
    const v0, 0x3f333333    # 0.7f

    .line 567
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 568
    iget v1, p0, Landroid/widget/StackView;->mSlideAmount:I

    if-eq v1, v0, :cond_1

    .line 569
    iput v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    const v1, 0x3e4ccccd    # 0.2f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 570
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    .line 573
    :cond_1
    iget v0, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 574
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    :cond_2
    iget v0, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    iput v0, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    .line 577
    iget v0, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    iput v0, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    .line 578
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    :cond_3
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 10

    .line 766
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 767
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 768
    iget v2, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v1, v2, :cond_5

    .line 770
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 772
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 779
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v3, v2, :cond_4

    if-eq v3, v0, :cond_3

    .line 782
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 783
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 785
    iget-object v5, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 786
    iget-object v5, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 787
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 788
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 791
    iget v5, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float/2addr v4, v0

    add-float/2addr v5, v4

    iput v5, p0, Landroid/widget/StackView;->mInitialY:F

    .line 792
    iget v0, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Landroid/widget/StackView;->mInitialX:F

    .line 794
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 795
    iget-object p1, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_2

    .line 796
    iget-object p0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 805
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    :cond_5
    return-void
.end method

.method private pacedScroll(Z)V
    .locals 4

    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/StackView;->mLastScrollTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    .line 606
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 610
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/StackView;->mLastScrollTime:J

    :cond_1
    return-void
.end method

.method private setupStackSlider(Landroid/view/View;I)V
    .locals 2

    .line 372
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p2}, Landroid/widget/StackView$StackSlider;->setMode(I)V

    if-eqz p1, :cond_0

    .line 374
    iget-object p2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v1, p0, Landroid/widget/StackView;->mResOutColor:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/StackView$HolographicHelper;->createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 375
    iget-object p2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 376
    iget-object p2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 377
    iget-object p2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 378
    iget-object p2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->bringToFront()V

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 380
    iget-object p0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p0, p1}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 382
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private transformViewAtIndex(ILandroid/view/View;Z)V
    .locals 10

    .line 319
    iget v0, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    .line 320
    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    .line 322
    iget v2, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 323
    iget v2, p0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, v3

    .line 324
    iget p1, p0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    sub-int/2addr p1, v3

    if-ne v2, p1, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    if-gez v2, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_0
    int-to-float p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    .line 330
    iget v4, p0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr p1, v4

    const/4 v4, 0x0

    sub-float v6, v2, p1

    mul-float/2addr v4, v6

    sub-float v4, v2, v4

    mul-float/2addr p1, v0

    sub-float v0, v4, v2

    .line 336
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    mul-float/2addr v0, v7

    add-float/2addr p1, v0

    mul-float/2addr v6, v1

    sub-float/2addr v2, v4

    .line 341
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v8

    div-float/2addr p0, v9

    mul-float/2addr v2, p0

    add-float/2addr v6, v2

    .line 346
    instance-of p0, p2, Landroid/widget/StackView$StackFrame;

    if-eqz p0, :cond_2

    .line 347
    move-object v0, p2

    check-cast v0, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v0}, Landroid/widget/StackView$StackFrame;->cancelTransformAnimator()Z

    :cond_2
    if-eqz p3, :cond_4

    const-string/jumbo p3, "translationX"

    .line 351
    new-array v0, v3, [F

    const/4 v1, 0x0

    aput v6, v0, v1

    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    const-string/jumbo v0, "translationY"

    .line 352
    new-array v2, v3, [F

    aput p1, v2, v1

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const-string/jumbo v0, "scaleX"

    .line 353
    new-array v2, v3, [F

    aput v4, v2, v1

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string/jumbo v2, "scaleY"

    .line 354
    new-array v6, v3, [F

    aput v4, v6, v1

    invoke-static {v2, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v4, 0x4

    .line 356
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    aput-object p1, v4, v5

    const/4 p1, 0x3

    aput-object p3, v4, p1

    invoke-static {p2, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 358
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_3

    .line 360
    check-cast p2, Landroid/widget/StackView$StackFrame;

    invoke-virtual {p2, p1}, Landroid/widget/StackView$StackFrame;->setTransformAnimator(Landroid/animation/ObjectAnimator;)V

    .line 362
    :cond_3
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 364
    :cond_4
    invoke-virtual {p2, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 365
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 366
    invoke-virtual {p2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 367
    invoke-virtual {p2, v4}, Landroid/view/View;->setScaleY(F)V

    :goto_1
    return-void
.end method

.method private updateChildTransforms()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 470
    :goto_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 471
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 473
    invoke-direct {p0, v1, v2, v0}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public advance()V
    .locals 4

    .line 1122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    sub-long/2addr v0, v2

    .line 1124
    iget-object v2, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v2, :cond_0

    return-void

    .line 1125
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1126
    iget-boolean v2, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v2, :cond_1

    return-void

    .line 1128
    :cond_1
    iget v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v2, :cond_2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1130
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    :cond_2
    return-void
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method bridge synthetic createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/StackView;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;
    .locals 2

    .line 1089
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1090
    instance-of v1, v0, Landroid/widget/StackView$LayoutParams;

    if-eqz v1, :cond_0

    .line 1091
    check-cast v0, Landroid/widget/StackView$LayoutParams;

    const/4 p0, 0x0

    .line 1092
    invoke-virtual {v0, p0}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1093
    invoke-virtual {v0, p0}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1094
    iput p0, v0, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1095
    iput p0, v0, Landroid/widget/StackView$LayoutParams;->width:I

    return-object v0

    .line 1098
    :cond_0
    new-instance v0, Landroid/widget/StackView$LayoutParams;

    invoke-direct {v0, p0, p1}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 534
    iget-object v0, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 535
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    .line 537
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 538
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/StackView$LayoutParams;

    .line 539
    iget v5, v4, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    if-nez v5, :cond_0

    iget v5, v4, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    if-eqz v5, :cond_1

    .line 540
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 541
    :cond_1
    invoke-virtual {v4}, Landroid/widget/StackView$LayoutParams;->resetInvalidateRect()V

    .line 543
    :cond_2
    invoke-virtual {v4}, Landroid/widget/StackView$LayoutParams;->getInvalidateRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 544
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 546
    iget-object v2, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 552
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 553
    iget-object v0, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRectUnion(Landroid/graphics/Rect;)Z

    .line 554
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 555
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 557
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1232
    const-class p0, Landroid/widget/StackView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 4

    .line 519
    new-instance v0, Landroid/widget/StackView$StackFrame;

    iget-object v1, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/StackView$StackFrame;-><init>(Landroid/content/Context;)V

    .line 520
    iget v1, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v2, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v3, p0, Landroid/widget/StackView;->mFramePadding:I

    iget p0, p0, Landroid/widget/StackView;->mFramePadding:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/StackView$StackFrame;->setPadding(IIII)V

    return-object v0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 1

    .line 465
    iget-object p1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 584
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 587
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x1

    if-gez v2, :cond_1

    const/4 p1, 0x0

    .line 589
    invoke-direct {p0, p1}, Landroid/widget/StackView;->pacedScroll(Z)V

    return v3

    :cond_1
    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 592
    invoke-direct {p0, v3}, Landroid/widget/StackView;->pacedScroll(Z)V

    return v3

    .line 598
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1238
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1239
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1240
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1241
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    const/16 v0, 0x1000

    .line 1242
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1244
    :cond_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result p0

    if-lez p0, :cond_2

    const/16 p0, 0x2000

    .line 1245
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 630
    :pswitch_0
    iget v0, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string p0, "StackView"

    const-string p1, "Error: No data for our primary pointer."

    .line 633
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 636
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 637
    iget v0, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float/2addr p1, v0

    .line 639
    invoke-direct {p0, p1}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    goto :goto_0

    .line 648
    :pswitch_1
    iput v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 649
    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_0

    .line 622
    :pswitch_2
    iget v0, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v0, v1, :cond_2

    .line 623
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/StackView;->mInitialX:F

    .line 624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/StackView;->mInitialY:F

    .line 625
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/widget/StackView;->mActivePointerId:I

    goto :goto_0

    .line 643
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 653
    :cond_2
    :goto_0
    iget p0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 1103
    invoke-virtual {p0}, Landroid/widget/StackView;->checkForAndHandleDataChanged()V

    .line 1105
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 1107
    invoke-virtual {p0, p2}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1109
    iget p4, p0, Landroid/widget/StackView;->mPaddingLeft:I

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    .line 1110
    iget p5, p0, Landroid/widget/StackView;->mPaddingTop:I

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    .line 1111
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    .line 1113
    iget v1, p0, Landroid/widget/StackView;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/StackView;->mPaddingTop:I

    iget v3, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr p4, v3

    iget v0, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr p5, v0

    invoke-virtual {p3, v1, v2, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1117
    :cond_0
    invoke-direct {p0}, Landroid/widget/StackView;->onLayout()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 1180
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1181
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1182
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1183
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 1185
    iget v2, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/high16 v3, 0x1000000

    const/high16 v5, -0x80000000

    const v6, 0x40071c72

    if-nez p2, :cond_1

    if-eqz v2, :cond_3

    .line 1193
    iget v1, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    .line 1192
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v7, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v1, v7

    iget v7, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int/2addr v1, v7

    goto :goto_1

    :cond_1
    if-ne p2, v5, :cond_4

    if-eqz v2, :cond_3

    .line 1196
    iget v7, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int/2addr v7, v8

    if-gt v7, v1, :cond_2

    move v1, v7

    goto :goto_1

    :cond_2
    or-int/2addr v1, v3

    goto :goto_1

    :cond_3
    move v1, v4

    :cond_4
    :goto_1
    if-nez p1, :cond_5

    if-eqz v2, :cond_7

    .line 1213
    iget p1, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    int-to-float p1, p1

    mul-float/2addr p1, v6

    .line 1212
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int/2addr p1, p2

    :goto_2
    move v0, p1

    goto :goto_3

    :cond_5
    if-ne p2, v5, :cond_8

    if-eqz v2, :cond_7

    .line 1216
    iget p1, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    iget p2, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int/2addr p1, p2

    if-gt p1, v0, :cond_6

    goto :goto_2

    :cond_6
    or-int p1, v0, v3

    goto :goto_2

    :cond_7
    move v0, v4

    .line 1226
    :cond_8
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/widget/StackView;->setMeasuredDimension(II)V

    .line 1227
    invoke-direct {p0}, Landroid/widget/StackView;->measureChildren()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 709
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 711
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 712
    iget v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const-string p0, "StackView"

    const-string p1, "Error: No data for our primary pointer."

    .line 715
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 719
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 720
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 721
    iget v5, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float/2addr v4, v5

    .line 722
    iget v5, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float/2addr v1, v5

    .line 723
    iget-object v5, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_1

    .line 724
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 726
    :cond_1
    iget-object v5, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v0, 0xff

    const/4 v5, 0x6

    const/4 v6, 0x1

    if-eq v0, v5, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 757
    :pswitch_0
    iput v3, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 758
    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_0

    .line 730
    :pswitch_1
    invoke-direct {p0, v4}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    .line 732
    iget p1, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    div-float/2addr v1, p1

    .line 733
    iget p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 734
    iget p1, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    sub-float/2addr v4, p1

    iget p1, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float p1, p1

    div-float/2addr v4, p1

    mul-float/2addr v4, v0

    .line 735
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne p1, v6, :cond_2

    sub-float v4, v0, v4

    .line 736
    :cond_2
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    sub-float/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 737
    iget-object p0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p0, v1}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    return v6

    .line 739
    :cond_3
    iget p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne p1, v6, :cond_6

    .line 740
    iget p1, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr v4, p1

    neg-float p1, v4

    iget v2, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    mul-float/2addr p1, v0

    .line 741
    iget v2, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v2, v6, :cond_4

    sub-float p1, v0, p1

    .line 742
    :cond_4
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p1}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 743
    iget-object p0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p0, v1}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    return v6

    .line 749
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 753
    :cond_5
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    :cond_6
    :goto_0
    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 2

    .line 1253
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 1256
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    const/16 p2, 0x1000

    if-eq p1, p2, :cond_4

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_2

    return v1

    .line 1267
    :cond_2
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result p1

    if-lez p1, :cond_3

    .line 1268
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    return v0

    :cond_3
    return v1

    .line 1261
    :cond_4
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_5

    .line 1262
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    return v0

    :cond_5
    return v1
.end method

.method public showNext()V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 392
    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v0, :cond_0

    return-void

    .line 393
    :cond_0
    iget-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 394
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 396
    invoke-direct {p0, v0, v1}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 397
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 398
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, v1}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 401
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    return-void
.end method

.method showOnly(IZ)V
    .locals 2

    .line 424
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 427
    iget p1, p0, Landroid/widget/StackView;->mCurrentWindowEnd:I

    :goto_0
    iget p2, p0, Landroid/widget/StackView;->mCurrentWindowStart:I

    if-lt p1, p2, :cond_1

    .line 428
    invoke-virtual {p0}, Landroid/widget/StackView;->getWindowSize()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/StackView;->modulo(II)I

    move-result p2

    .line 429
    iget-object v0, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object p2, p2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 432
    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 435
    :cond_1
    iget-object p1, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 436
    iget-object p1, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    :cond_2
    const/4 p1, 0x0

    .line 438
    iput-boolean p1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 439
    iput-boolean p1, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    return-void
.end method

.method public showPrevious()V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 410
    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v0, :cond_0

    return-void

    .line 411
    :cond_0
    iget-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 414
    invoke-direct {p0, v1, v0}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 415
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 416
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 419
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    return-void
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 1

    .line 457
    invoke-virtual {p0}, Landroid/widget/StackView;->updateClickFeedback()V

    .line 458
    iget-object p1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    iget-object p1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    .line 460
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p4, :cond_0

    .line 233
    move-object v2, p3

    check-cast v2, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v2}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 234
    invoke-virtual {p3, v0}, Landroid/view/View;->setRotationX(F)V

    .line 235
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/StackView$LayoutParams;

    .line 236
    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 237
    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    :cond_0
    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    .line 240
    invoke-virtual {p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne p2, v5, :cond_1

    .line 241
    invoke-direct {p0, p2, p3, v1}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 242
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x2

    if-nez p1, :cond_3

    if-ne p2, v4, :cond_3

    .line 246
    move-object p1, p3

    check-cast p1, Landroid/widget/StackView$StackFrame;

    invoke-virtual {p1}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 247
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v6, p0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 250
    new-instance v6, Landroid/widget/StackView$StackSlider;

    iget-object v7, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v6, p0, v7}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 251
    invoke-virtual {v6, p3}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    if-eqz p4, :cond_2

    const-string v7, "YProgress"

    .line 254
    new-array v8, v4, [F

    aput v0, v8, v1

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const-string v8, "XProgress"

    .line 255
    new-array v9, v4, [F

    aput v0, v9, v1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 256
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v1

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v3, v3

    .line 258
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 259
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 260
    invoke-virtual {p1, v0}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 261
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 263
    :cond_2
    invoke-virtual {v6, v0}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 264
    invoke-virtual {v6, v0}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_0

    :cond_3
    if-ne p1, v4, :cond_5

    if-nez p2, :cond_5

    .line 268
    move-object p1, p3

    check-cast p1, Landroid/widget/StackView$StackFrame;

    invoke-virtual {p1}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 269
    iget-object v6, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v7, p0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 271
    new-instance v7, Landroid/widget/StackView$StackSlider;

    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v7, p0, v8}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 272
    invoke-virtual {v7, p3}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    if-eqz p4, :cond_4

    const-string v8, "YProgress"

    .line 274
    new-array v9, v4, [F

    aput v3, v9, v1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v8, "XProgress"

    .line 275
    new-array v9, v4, [F

    aput v0, v9, v1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 276
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v1

    aput-object v3, v5, v4

    invoke-static {v7, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v3, v6

    .line 278
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 279
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 280
    invoke-virtual {p1, v0}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 281
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 283
    :cond_4
    invoke-virtual {v7, v3}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 284
    invoke-virtual {v7, v0}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto :goto_0

    :cond_5
    if-nez p2, :cond_6

    .line 288
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x4

    .line 289
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    if-ne p1, v4, :cond_8

    :cond_7
    if-le p2, v4, :cond_8

    .line 291
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 293
    invoke-virtual {p3, v0}, Landroid/view/View;->setRotationX(F)V

    .line 294
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/StackView$LayoutParams;

    .line 295
    invoke-virtual {p1, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 296
    invoke-virtual {p1, v1}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    goto :goto_0

    :cond_8
    if-ne p1, v2, :cond_9

    .line 298
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 299
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_9
    if-ne p2, v2, :cond_b

    if-eqz p4, :cond_a

    .line 302
    new-instance p1, Landroid/widget/StackView$1;

    invoke-direct {p1, p0, p3}, Landroid/widget/StackView$1;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/StackView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 308
    :cond_a
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    :goto_0
    if-eq p2, v2, :cond_c

    .line 314
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    :cond_c
    return-void
.end method

.method updateClickFeedback()V
    .locals 5

    .line 443
    iget-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 444
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 446
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v4, p0, Landroid/widget/StackView;->mClickColor:I

    .line 447
    invoke-virtual {v3, v1, v4}, Landroid/widget/StackView$HolographicHelper;->createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 446
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 448
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 449
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 451
    :cond_0
    iput-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    :cond_1
    return-void
.end method
