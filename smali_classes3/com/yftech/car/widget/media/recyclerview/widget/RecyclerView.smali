.class public Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/core/view/ScrollingView;
.implements Landroidx/core/view/NestedScrollingChild2;
.implements Landroidx/core/view/NestedScrollingChild3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnFlingListener;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerListener;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewCacheExtension;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Orientation;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field static final ALLOW_THREAD_GAP_WORK:Z

.field static final DEBUG:Z = false

.field static final DEFAULT_ORIENTATION:I = 0x1

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final FOREVER_NS:J = 0x7fffffffffffffffL

.field public static final HORIZONTAL:I = 0x0

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final UNDEFINED_DURATION:I = -0x80000000

.field static final VERBOSE_TRACING:Z = false

.field public static final VERTICAL:I = 0x1

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mAccessibilityDelegate:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

.field mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

.field mClipToPadding:Z

.field mDataSetHasChangedAfterLayout:Z

.field mDispatchItemsChangedEvent:Z

.field private mDispatchScrollCounter:I

.field private mEatenAccessibilityChangeFlags:I

.field private mEdgeEffectFactory:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mEnableFastScroller:Z

.field mFirstLayoutComplete:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mGapWorker:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

.field mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptRequestLayoutDepth:I

.field private mInterceptingOnItemTouchListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field mIsAttached:Z

.field mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastAutoMeasureNonExactMeasuredHeight:I

.field private mLastAutoMeasureNonExactMeasuredWidth:I

.field private mLastAutoMeasureSkippedDueToExact:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mLayoutOrScrollCounter:I

.field mLayoutSuppressed:Z

.field mLayoutWasDefered:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mPendingSavedState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

.field mRecyclerListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerListener;

.field final mRecyclerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerListener;",
            ">;"
        }
    .end annotation
.end field

.field final mReusableIntPair:[I

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private mScaledHorizontalScrollFactor:F

.field private mScaledVerticalScrollFactor:F

.field private mScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field final mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 231
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010436

    aput v3, v1, v2

    sput-object v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 241
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    sput-boolean v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 248
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 250
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    sput-boolean v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 256
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    sput-boolean v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 262
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-gt v1, v3, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    sput-boolean v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 272
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v3, :cond_6

    move v1, v0

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    sput-boolean v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    const/4 v1, 0x4

    .line 375
    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    sput-object v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 619
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$3;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$3;-><init>()V

    sput-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 691
    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 695
    sget v0, Lcom/yftech/car/widget/media/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 699
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 378
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    .line 380
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    .line 397
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    .line 411
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$1;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 431
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 432
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 433
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 458
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 488
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 497
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 507
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 516
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 518
    new-instance v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    invoke-direct {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    .line 522
    new-instance v1, Lcom/yftech/car/widget/media/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 552
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v1, -0x1

    .line 553
    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    const/4 v2, 0x1

    .line 565
    iput v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 566
    iput v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    const/4 v2, 0x1

    .line 568
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 570
    new-instance v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-direct {v3, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    iput-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewFlinger:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;

    .line 574
    sget-boolean v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_0

    new-instance v3, Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-direct {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 576
    new-instance v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-direct {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;-><init>()V

    iput-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    .line 582
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 583
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 584
    new-instance v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v3, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    iput-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 586
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    const/4 v3, 0x2

    .line 592
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 595
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 596
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    .line 599
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 606
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 609
    new-instance v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$2;

    invoke-direct {v4, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$2;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    iput-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 646
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 647
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 652
    new-instance v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$4;

    invoke-direct {v4, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$4;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    iput-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore$ProcessCallback;

    .line 700
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setScrollContainer(Z)V

    .line 701
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 703
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 704
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 706
    invoke-static {v4, p1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    iput v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 708
    invoke-static {v4, p1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    iput v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 709
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    .line 710
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 711
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 713
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 714
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->initAdapterManager()V

    .line 715
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->initChildrenHelper()V

    .line 716
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->initAutofill()V

    .line 718
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_2

    .line 720
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 723
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    .line 724
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 725
    new-instance v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v3, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    .line 727
    sget-object v3, Lcom/yftech/car/widget/media/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 729
    sget-object v6, Lcom/yftech/car/widget/media/R$styleable;->RecyclerView:[I

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v3

    move v9, p3

    invoke-static/range {v4 .. v10}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 731
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 732
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RecyclerView_android_descendantFocusability:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v1, :cond_3

    const/high16 v1, 0x40000

    .line 735
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 737
    :cond_3
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->RecyclerView_android_clipToPadding:I

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 738
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->RecyclerView_fastScrollEnabled:I

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mEnableFastScroller:Z

    .line 739
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mEnableFastScroller:Z

    if-eqz v1, :cond_4

    .line 740
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->RecyclerView_fastScrollVerticalThumbDrawable:I

    .line 741
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 742
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RecyclerView_fastScrollVerticalTrackDrawable:I

    .line 743
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 744
    sget v5, Lcom/yftech/car/widget/media/R$styleable;->RecyclerView_fastScrollHorizontalThumbDrawable:I

    .line 745
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    .line 746
    sget v6, Lcom/yftech/car/widget/media/R$styleable;->RecyclerView_fastScrollHorizontalTrackDrawable:I

    .line 747
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 748
    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 751
    :cond_4
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v9, p3

    .line 754
    invoke-direct/range {v5 .. v10}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 757
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_5

    .line 758
    sget-object v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 760
    sget-object v5, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v1

    move v8, p3

    invoke-static/range {v3 .. v9}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 762
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 763
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 766
    :cond_5
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 222
    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 222
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method private addAnimatingView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 1509
    iget-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1510
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1511
    :goto_0
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1512
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1514
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    const/4 p1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 1516
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {p0, v0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 1518
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->hide(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private animateChange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 4566
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    if-eqz p5, :cond_0

    .line 4568
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->addAnimatingView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    if-eq p1, p2, :cond_2

    if-eqz p6, :cond_1

    .line 4572
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->addAnimatingView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4574
    :cond_1
    iput-object p2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4576
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->addAnimatingView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4577
    iget-object p5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p5, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4578
    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4579
    iput-object p1, p2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4581
    :cond_2
    iget-object p5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->animateChange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4582
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_3
    return-void
.end method

.method private cancelScroll()V
    .locals 1

    .line 3598
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->resetScroll()V

    const/4 v0, 0x0

    .line 3599
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p0    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6044
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 6045
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6047
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v2, :cond_0

    return-void

    .line 6051
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6052
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 6053
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 6058
    :cond_2
    iput-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 6

    if-eqz p2, :cond_1

    .line 826
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 827
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 828
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 831
    :try_start_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 835
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 838
    invoke-static {p2, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    .line 839
    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 843
    :try_start_1
    sget-object v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 844
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x4

    .line 845
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p3, v5, v3

    const/4 p1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v5, p1

    const/4 p1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v5, p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v5

    goto :goto_1

    :catch_0
    move-exception p1

    .line 848
    :try_start_2
    new-array p4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 855
    :goto_1
    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 856
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto/16 :goto_2

    :catch_1
    move-exception p0

    .line 850
    invoke-virtual {p0, p1}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 851
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ": Error creating LayoutManager "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p0

    .line 870
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Class is not a LayoutManager "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 867
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Cannot access non-public constructor "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    .line 864
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Could not instantiate the LayoutManager: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    .line 861
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Could not instantiate the LayoutManager: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_6
    move-exception p0

    .line 858
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Unable to find LayoutManager "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method private didChildRangeChange(II)Z
    .locals 3

    .line 4512
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 4513
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget p0, p0, v2

    if-eq p0, p2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    .line 3835
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 v1, 0x0

    .line 3836
    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    if-eqz v0, :cond_0

    .line 3837
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3838
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x800

    .line 3839
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 3840
    invoke-static {v1, v0}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3841
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 8

    .line 4214
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 4215
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V

    .line 4216
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 4217
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 4218
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->clear()V

    .line 4219
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4220
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 4221
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->saveFocusInfo()V

    .line 4222
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v3, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 4223
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 4224
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 4225
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 4226
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 4228
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_3

    .line 4230
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_3

    .line 4232
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4233
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 4236
    :cond_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    .line 4238
    invoke-static {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v6

    .line 4239
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 4237
    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 4240
    iget-object v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v5, v3, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->addToPreLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 4241
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v4, v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4242
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4243
    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChangedHolderKey(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 4251
    iget-object v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v6, v4, v5, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->addToOldChangeHolders(JLcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4255
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_9

    .line 4262
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->saveOldPositions()V

    .line 4263
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4264
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput-boolean v2, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4266
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, v3, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V

    .line 4267
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput-boolean v0, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    move v0, v2

    .line 4269
    :goto_3
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 4270
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4271
    invoke-static {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4272
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    .line 4275
    :cond_4
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->isInPreLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 4276
    invoke-static {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v3

    const/16 v4, 0x2000

    .line 4278
    invoke-virtual {v1, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v4

    if-nez v4, :cond_5

    or-int/lit16 v3, v3, 0x1000

    .line 4282
    :cond_5
    iget-object v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    .line 4283
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 4282
    invoke-virtual {v5, v6, v1, v3, v7}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    if-eqz v4, :cond_6

    .line 4285
    invoke-virtual {p0, v1, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 4287
    :cond_6
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v4, v1, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4292
    :cond_8
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->clearOldPositions()V

    goto :goto_5

    .line 4294
    :cond_9
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->clearOldPositions()V

    .line 4296
    :goto_5
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4297
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 4298
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    const/4 v0, 0x2

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    return-void
.end method

.method private dispatchLayoutStep2()V
    .locals 4

    .line 4306
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 4307
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4308
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 4309
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 4310
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 4311
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 4312
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPendingSavedState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->canRestoreState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4313
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPendingSavedState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 4314
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPendingSavedState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    iget-object v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    const/4 v0, 0x0

    .line 4316
    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPendingSavedState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    .line 4319
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 4320
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V

    .line 4322
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4325
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 4326
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    const/4 v2, 0x4

    iput v2, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 4327
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4328
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    return-void
.end method

.method private dispatchLayoutStep3()V
    .locals 11

    .line 4336
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 4337
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 4338
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4339
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 4340
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_5

    .line 4344
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    .line 4345
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 4346
    invoke-virtual {v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 4349
    :cond_0
    invoke-virtual {p0, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChangedHolderKey(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v2

    .line 4350
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    .line 4351
    invoke-virtual {v4, v6, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 4352
    iget-object v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v6, v2, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->getFromOldChangeHolders(J)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4353
    invoke-virtual {v6}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_3

    .line 4364
    iget-object v7, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v7, v6}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->isDisappearing(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v8

    .line 4366
    iget-object v7, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v7, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->isDisappearing(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v9

    if-eqz v8, :cond_1

    if-ne v6, v5, :cond_1

    .line 4369
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v2, v5, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->addToPostLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 4371
    :cond_1
    iget-object v7, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v7, v6}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->popFromPreLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 4374
    iget-object v10, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v10, v5, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->addToPostLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 4375
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v4, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->popFromPostLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v10

    if-nez v7, :cond_2

    .line 4377
    invoke-direct {p0, v2, v3, v5, v6}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_2
    move-object v3, p0

    move-object v4, v6

    move-object v6, v7

    move-object v7, v10

    .line 4379
    invoke-direct/range {v3 .. v9}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->animateChange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_1

    .line 4384
    :cond_3
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v2, v5, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->addToPostLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4389
    :cond_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->process(Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore$ProcessCallback;)V

    .line 4392
    :cond_5
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V

    .line 4393
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mItemCount:I

    iput v2, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    const/4 v0, 0x0

    .line 4394
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4395
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 4396
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput-boolean v0, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 4398
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput-boolean v0, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 4399
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iput-boolean v0, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 4400
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 4401
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4403
    :cond_6
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v2, :cond_7

    .line 4406
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iput v0, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 4407
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iput-boolean v0, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 4408
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 4411
    :cond_7
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V

    .line 4412
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4413
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 4414
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->clear()V

    .line 4415
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v1, v3, v1

    invoke-direct {p0, v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4416
    invoke-virtual {p0, v0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 4418
    :cond_8
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->recoverFocusFromState()V

    .line 4419
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->resetFocusInfo()V

    return-void
.end method

.method private dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 3263
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-nez v0, :cond_1

    .line 3264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3267
    :cond_0
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 3269
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v0, p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 3270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 3272
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;

    :cond_3
    return v1
.end method

.method private findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 3292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3293
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3295
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 3296
    invoke-interface {v4, p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    .line 3297
    iput-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 8

    .line 4486
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    .line 4488
    aput p0, p1, v2

    .line 4489
    aput p0, p1, v1

    return-void

    :cond_0
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 4495
    iget-object v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v6, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 4496
    invoke-virtual {v6}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 4499
    :cond_1
    invoke-virtual {v6}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-ge v6, v4, :cond_2

    move v4, v6

    :cond_2
    if-le v6, v5, :cond_3

    move v5, v6

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4507
    :cond_4
    aput v4, p1, v2

    .line 4508
    aput v5, p1, v1

    return-void
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6022
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6025
    :cond_0
    instance-of v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 6026
    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    return-object p0

    .line 6028
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 6029
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 6031
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6032
    invoke-static {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4083
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4086
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 4088
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 4092
    :cond_1
    iget-object v4, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4093
    iget-object p0, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4096
    :cond_3
    :goto_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    const/4 v1, 0x0

    if-ltz v0, :cond_6

    .line 4098
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    .line 4102
    :cond_4
    iget-object v1, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4103
    iget-object p0, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    return-object v1
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5000
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 5281
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 5282
    iget-object v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 5283
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 5284
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 5285
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 5286
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    .line 5283
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 2

    .line 4184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    .line 4185
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4186
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 4187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    goto :goto_0

    :cond_1
    return p0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    .line 878
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    .line 879
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "."

    .line 881
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p2

    .line 884
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-class p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;
    .locals 1

    .line 13920
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-nez v0, :cond_0

    .line 13921
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 13923
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    return-object p0
.end method

.method private handleMissingPreInfoForChangeError(JLcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 4440
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 4442
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4443
    invoke-static {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-ne v2, p3, :cond_0

    goto :goto_1

    .line 4447
    :cond_0
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChangedHolderKey(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 4449
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4450
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " \n View Holder 2:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4453
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4455
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " \n View Holder 2:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4459
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "RecyclerView"

    .line 4464
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " cannot be found but it is necessary for "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4466
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4464
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasUpdatedView()Z
    .locals 5

    .line 2047
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2049
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2050
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2053
    :cond_0
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private initAutofill()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 788
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAutofill(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 789
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAutofill(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private initChildrenHelper()V
    .locals 2

    .line 888
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    new-instance v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$5;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_19

    if-eq p2, p0, :cond_19

    if-ne p2, p1, :cond_0

    goto/16 :goto_3

    .line 2981
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    .line 2988
    :cond_2
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    .line 2992
    :cond_3
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2993
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2994
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2995
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2996
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, v1, :cond_4

    move p1, p2

    goto :goto_0

    :cond_4
    move p1, v1

    .line 2998
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_5

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_6

    move v2, v1

    goto :goto_1

    .line 3002
    :cond_6
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_7

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_8

    move v2, p2

    goto :goto_1

    :cond_8
    move v2, v0

    .line 3008
    :goto_1
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_9

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gt v3, v4, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_a

    move p2, v1

    goto :goto_2

    .line 3012
    :cond_a
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v4, :cond_b

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v4, :cond_c

    :cond_b
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_c

    goto :goto_2

    :cond_c
    move p2, v0

    :goto_2
    const/16 v3, 0x11

    if-eq p3, v3, :cond_17

    const/16 v3, 0x21

    if-eq p3, v3, :cond_15

    const/16 v3, 0x42

    if-eq p3, v3, :cond_13

    const/16 v3, 0x82

    if-eq p3, v3, :cond_11

    packed-switch p3, :pswitch_data_0

    .line 3031
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid direction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-gtz p2, :cond_d

    if-nez p2, :cond_e

    mul-int/2addr v2, p1

    if-lez v2, :cond_e

    :cond_d
    move v0, v1

    :cond_e
    return v0

    :pswitch_1
    if-ltz p2, :cond_f

    if-nez p2, :cond_10

    mul-int/2addr v2, p1

    if-gez v2, :cond_10

    :cond_f
    move v0, v1

    :cond_10
    return v0

    :cond_11
    if-lez p2, :cond_12

    move v0, v1

    :cond_12
    return v0

    :cond_13
    if-lez v2, :cond_14

    move v0, v1

    :cond_14
    return v0

    :cond_15
    if-gez p2, :cond_16

    move v0, v1

    :cond_16
    return v0

    :cond_17
    if-gez v2, :cond_18

    move v0, v1

    :cond_18
    return v0

    :cond_19
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private nestedScrollByInternal(IILandroid/view/MotionEvent;I)V
    .locals 11
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1917
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p0, "RecyclerView"

    const-string p1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 1918
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1922
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return-void

    .line 1925
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 1926
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1927
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1928
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v0, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    if-eqz v3, :cond_3

    or-int/lit8 v4, v4, 0x2

    .line 1937
    :cond_3
    invoke-virtual {p0, v4, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    if-eqz v0, :cond_4

    move v6, p1

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_1
    if-eqz v3, :cond_5

    move v7, p2

    goto :goto_2

    :cond_5
    move v7, v1

    .line 1940
    :goto_2
    iget-object v8, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    iget-object v9, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    move-object v5, p0

    move v10, p4

    .line 1938
    invoke-virtual/range {v5 .. v10}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1943
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v4, v4, v1

    sub-int/2addr p1, v4

    .line 1944
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v2, v4, v2

    sub-int/2addr p2, v2

    :cond_6
    if-eqz v0, :cond_7

    move v0, p1

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    if-eqz v3, :cond_8

    move v1, p2

    .line 1947
    :cond_8
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    .line 1951
    iget-object p3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mGapWorker:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

    if-eqz p3, :cond_a

    if-nez p1, :cond_9

    if-eqz p2, :cond_a

    .line 1952
    :cond_9
    iget-object p3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mGapWorker:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

    invoke-virtual {p3, p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;->postFromTraversal(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V

    .line 1954
    :cond_a
    invoke-virtual {p0, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 3603
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 3604
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3607
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3608
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 3609
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .line 3931
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .line 3941
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 3944
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->reset()V

    .line 3945
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    if-eqz v0, :cond_0

    .line 3946
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onItemsChanged(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    .line 3952
    :cond_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3953
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->preProcess()V

    goto :goto_0

    .line 3955
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3957
    :goto_0
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    .line 3958
    :goto_2
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-boolean v4, v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v4, :cond_6

    :cond_4
    iget-boolean v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    .line 3964
    invoke-virtual {v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_3
    iput-boolean v4, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3965
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v4, v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_7

    .line 3968
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result p0

    if-eqz p0, :cond_7

    move v1, v2

    :cond_7
    iput-boolean v1, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-gez v1, :cond_0

    .line 2675
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 2676
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v4, p2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    sub-float p3, v2, p3

    invoke-static {v1, v4, p3}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    :goto_0
    move p3, v3

    goto :goto_1

    :cond_0
    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    .line 2679
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 2680
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    invoke-static {v1, v4, p3}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_1
    cmpg-float v1, p4, v0

    if-gez v1, :cond_2

    .line 2685
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 2686
    iget-object p3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v1, p4

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-static {p3, v1, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    goto :goto_2

    :cond_2
    cmpl-float v1, p4, v0

    if-lez v1, :cond_3

    .line 2689
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 2690
    iget-object p3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v2, p1

    invoke-static {p3, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    goto :goto_2

    :cond_3
    move v3, p3

    :goto_2
    if-nez v3, :cond_4

    cmpl-float p1, p2, v0

    if-nez p1, :cond_4

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_5

    .line 2695
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private recoverFocusFromState()V
    .locals 6

    .line 4110
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4111
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_a

    .line 4112
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 4120
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4121
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 4122
    sget-boolean v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v1, :cond_2

    .line 4123
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4135
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 4138
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestFocus()Z

    return-void

    .line 4141
    :cond_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 4151
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-wide v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4152
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-wide v4, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v4, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    .line 4155
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    iget-object v5, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4156
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 4169
    :cond_5
    iget-object v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_2

    .line 4157
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 4164
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v1

    :cond_7
    :goto_2
    if-eqz v1, :cond_9

    .line 4173
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v4, v0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    .line 4174
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    invoke-virtual {v1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 4175
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move-object p0, v1

    .line 4179
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    return-void

    :cond_a
    :goto_4
    return-void
.end method

.method private releaseGlows()V
    .locals 2

    .line 2701
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2702
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2703
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2705
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 2706
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2707
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2709
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    .line 2710
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2711
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2713
    :cond_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    .line 2714
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2715
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 2718
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 3054
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3059
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3060
    instance-of v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v1, :cond_1

    .line 3062
    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 3063
    iget-boolean v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_1

    .line 3064
    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 3065
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 3066
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 3067
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 3068
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    .line 3073
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3074
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3076
    :cond_2
    iget-object v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v8, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    move v10, v1

    goto :goto_1

    :cond_3
    move v10, v4

    :goto_1
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method private resetFocusInfo()V
    .locals 3

    .line 4067
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    .line 4068
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    const/4 v1, -0x1

    iput v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 4069
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    return-void
.end method

.method private resetScroll()V
    .locals 1

    .line 3590
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 3591
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 3593
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 3594
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->releaseGlows()V

    return-void
.end method

.method private saveFocusInfo()V
    .locals 4

    .line 4047
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 4048
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 4051
    :cond_1
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    .line 4053
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->resetFocusInfo()V

    goto :goto_4

    .line 4055
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    const-wide/16 v2, -0x1

    :goto_2
    iput-wide v2, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    .line 4059
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    goto :goto_3

    .line 4060
    :cond_4
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_3

    .line 4061
    :cond_5
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v2

    :goto_3
    iput v2, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 4062
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result p0

    iput p0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    :goto_4
    return-void
.end method

.method private setAdapterInternal(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;ZZ)V
    .locals 2
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1241
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 1243
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_2

    .line 1246
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 1248
    :cond_2
    iget-object p3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->reset()V

    .line 1249
    iget-object p3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    .line 1250
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_3

    .line 1252
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 1253
    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    .line 1255
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_4

    .line 1256
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1258
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3, v0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->onAdapterChanged(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 1259
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    return-void
.end method

.method private stopScrollersInternal()V
    .locals 1

    .line 2644
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewFlinger:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    .line 2645
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 2646
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    :cond_0
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2

    if-gez p1, :cond_0

    .line 2747
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 2748
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2749
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 2752
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 2753
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2754
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 2759
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 2760
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2761
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    .line 2764
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 2765
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2766
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 2771
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 3087
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onAddFocusables(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3088
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    return-void
.end method

.method public addItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 1675
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->addItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public addItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .locals 2
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1646
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1650
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1651
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_1
    if-gez p2, :cond_2

    .line 1654
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1656
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1658
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1659
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public addOnChildAttachStateChangeListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1345
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 1348
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnItemTouchListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3223
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1783
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1786
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRecyclerListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerListener;)V
    .locals 2
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "\'listener\' arg cannot be null."

    .line 1301
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1303
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateAppearance(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 4548
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4549
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->animateAppearance(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4550
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_0
    return-void
.end method

.method animateDisappearance(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4556
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->addAnimatingView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    .line 4557
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4558
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->animateDisappearance(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4559
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_0
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    .line 3174
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 3176
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3177
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3179
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .line 3192
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 3194
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3195
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3197
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3199
    :cond_1
    iget p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez p1, :cond_2

    const-string p1, "RecyclerView"

    const-string v0, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    .line 3200
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3205
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3200
    invoke-static {p1, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method canReuseUpdatedViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 4859
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 4860
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    .line 4859
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result p0

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

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 4685
    instance-of v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->checkLayoutParams(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method clearOldPositions()V
    .locals 4

    .line 4739
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4741
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4742
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4743
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4746
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->clearOldPositions()V

    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .line 1369
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1370
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .line 1804
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1805
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .line 2165
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2168
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .line 2140
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2143
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .line 2188
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2191
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .line 2237
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2240
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 2213
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2216
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .line 2260
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2263
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 2

    .line 2724
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 2725
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2726
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2728
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 2729
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2730
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 2732
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    .line 2733
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2734
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 2736
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    .line 2737
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2738
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_3
    if-eqz v0, :cond_4

    .line 2741
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method consumePendingUpdateOperations()V
    .locals 2

    .line 2006
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2012
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2018
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    const/16 v1, 0xb

    .line 2019
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "RV PartialInvalidate"

    .line 2021
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2023
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 2024
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->preProcess()V

    .line 2025
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-nez v0, :cond_3

    .line 2026
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2027
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchLayout()V

    goto :goto_0

    .line 2030
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->consumePostponedUpdates()V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 2033
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 2034
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 2035
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    goto :goto_1

    .line 2036
    :cond_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "RV FullInvalidate"

    .line 2037
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 2039
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string v0, "RV FullInvalidate"

    .line 2007
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 2009
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-void
.end method

.method defaultOnMeasure(II)V
    .locals 2

    .line 3767
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 3768
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    .line 3766
    invoke-static {p1, v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    .line 3770
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 3771
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 3769
    invoke-static {p2, v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    .line 3773
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .locals 2

    .line 7881
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7882
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 7883
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 7884
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7886
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7887
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 7889
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .locals 2

    .line 7866
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7867
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 7868
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 7869
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7871
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7872
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 7874
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method dispatchLayout()V
    .locals 4

    .line 3997
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    const-string p0, "RecyclerView"

    const-string v0, "No adapter attached; skipping layout"

    .line 3998
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4002
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string p0, "RecyclerView"

    const-string v0, "No layout manager attached; skipping layout"

    .line 4003
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4007
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 4013
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 4014
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 4015
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 4016
    :goto_0
    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 4017
    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 4018
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    .line 4020
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v1, v2, :cond_4

    .line 4021
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 4022
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    .line 4023
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_2

    .line 4024
    :cond_4
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->hasUpdates()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4026
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4027
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_5

    goto :goto_1

    .line 4040
    :cond_5
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    goto :goto_2

    .line 4036
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    .line 4037
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 4042
    :goto_2
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchLayoutStep3()V

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 0

    .line 11977
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 0

    .line 11982
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 0

    .line 11965
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    .line 11971
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedScroll(IIII[II[I)V
    .locals 8
    .param p7    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11959
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 11945
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7

    .line 11952
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p0

    return p0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2

    .line 5381
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 5382
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 5387
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 5390
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 5391
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;I)V

    .line 5393
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 5394
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 5395
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 4

    .line 5339
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 5344
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 5345
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollY()I

    move-result v1

    sub-int v2, v0, p1

    sub-int v3, v1, p2

    .line 5346
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 5349
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 5353
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 5354
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V

    .line 5356
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5357
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 5358
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5361
    :cond_1
    iget p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .locals 5

    .line 11856
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 11857
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11858
    iget-object v2, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 11861
    :cond_0
    iget v2, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 11864
    iget-object v4, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 11865
    iput v3, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11869
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 3901
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1496
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1488
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 4614
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 4616
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4618
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4623
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4624
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 4625
    iget-boolean v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    .line 4626
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4627
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4628
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    .line 4629
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :cond_3
    move v3, v1

    .line 4631
    :goto_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4632
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 4633
    iget-boolean v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_4

    .line 4634
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4636
    :cond_4
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    move v4, v1

    :goto_4
    or-int/2addr v3, v4

    .line 4637
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4639
    :cond_6
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4640
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 4641
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v4

    .line 4642
    iget-boolean v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    goto :goto_5

    :cond_7
    move v5, v1

    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    .line 4643
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    .line 4644
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4645
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_6

    :cond_8
    move v4, v1

    :goto_6
    or-int/2addr v3, v4

    .line 4646
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4648
    :cond_9
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4649
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v4, 0x43340000    # 180.0f

    .line 4650
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4651
    iget-boolean v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_a

    .line 4652
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    .line 4654
    :cond_a
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4656
    :goto_7
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v1, v2

    :cond_b
    or-int/2addr v1, v3

    .line 4657
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_8

    :cond_c
    move v1, v3

    :goto_8
    if-nez v1, :cond_d

    .line 4663
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 4664
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_d

    move v1, v2

    :cond_d
    if-eqz v1, :cond_e

    .line 4669
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_e
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 5215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 2816
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2819
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 2820
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2821
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2822
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    .line 2821
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2824
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureLeftGlow()V
    .locals 4

    .line 2776
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2779
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2780
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2781
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2782
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    .line 2781
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2784
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureRightGlow()V
    .locals 4

    .line 2789
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2792
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 2793
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2794
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2795
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    .line 2794
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2797
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 2802
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2805
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 2806
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2807
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2808
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    .line 2807
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2810
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method exceptionLabel()Ljava/lang/String;
    .locals 2

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final fillRemainingScrollValues(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 4196
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4197
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewFlinger:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 4198
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    .line 4199
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRemainingScrollVertical:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4201
    iput p0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    .line 4202
    iput p0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRemainingScrollVertical:I

    :goto_0
    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5198
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 5200
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5201
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 5202
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 5203
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    .line 5204
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpg-float v2, p1, v4

    if-gtz v2, :cond_0

    .line 5205
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    .line 5206
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4974
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 4975
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 4976
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 4977
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4991
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 4992
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public findViewHolderForAdapterPosition(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5109
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 5112
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 5116
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5117
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5118
    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 5119
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    iget-object v4, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public findViewHolderForItemId(J)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    .line 5171
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 5174
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 5177
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5178
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 5179
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    iget-object v4, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public findViewHolderForLayoutPosition(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 5087
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public findViewHolderForPosition(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 5059
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method findViewHolderForPosition(IZ)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5131
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 5134
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5135
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_0

    .line 5137
    iget v4, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-eq v4, p1, :cond_1

    goto :goto_1

    .line 5140
    :cond_0
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_1

    goto :goto_1

    .line 5143
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    iget-object v4, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public fling(II)Z
    .locals 7

    .line 2581
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "RecyclerView"

    const-string p1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2582
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2586
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return v1

    .line 2590
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 2591
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v0, :cond_2

    .line 2593
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_3

    :cond_2
    move p1, v1

    :cond_3
    if-eqz v2, :cond_4

    .line 2596
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_5

    :cond_4
    move p2, v1

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v1

    :cond_6
    int-to-float v3, p1

    int-to-float v4, p2

    .line 2604
    invoke-virtual {p0, v3, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x1

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move v6, v1

    goto :goto_1

    :cond_8
    :goto_0
    move v6, v5

    .line 2606
    :goto_1
    invoke-virtual {p0, v3, v4, v6}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 2608
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnFlingListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnFlingListener;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnFlingListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnFlingListener;

    invoke-virtual {v3, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v3

    if-eqz v3, :cond_9

    return v5

    :cond_9
    if-eqz v6, :cond_c

    if-eqz v0, :cond_a

    move v1, v5

    :cond_a
    if-eqz v2, :cond_b

    or-int/lit8 v1, v1, 0x2

    .line 2620
    :cond_b
    invoke-virtual {p0, v1, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 2622
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v0, v0

    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2623
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v0, v0

    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2624
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewFlinger:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;->fling(II)V

    return v5

    :cond_c
    return v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    .line 2891
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2895
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 2896
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2898
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    const/4 v5, 0x2

    if-eq p2, v5, :cond_2

    if-ne p2, v1, :cond_e

    .line 2904
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, v5, :cond_3

    const/16 v0, 0x82

    goto :goto_1

    :cond_3
    const/16 v0, 0x21

    .line 2907
    :goto_1
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_4

    move v6, v1

    goto :goto_2

    :cond_4
    move v6, v2

    .line 2909
    :goto_2
    sget-boolean v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v7, :cond_6

    move p2, v0

    goto :goto_3

    :cond_5
    move v6, v2

    :cond_6
    :goto_3
    if-nez v6, :cond_b

    .line 2914
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2915
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    if-ne p2, v5, :cond_8

    move v5, v1

    goto :goto_5

    :cond_8
    move v5, v2

    :goto_5
    xor-int/2addr v0, v5

    if-eqz v0, :cond_9

    const/16 v0, 0x42

    goto :goto_6

    :cond_9
    const/16 v0, 0x11

    .line 2918
    :goto_6
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_a

    move v6, v1

    goto :goto_7

    :cond_a
    move v6, v2

    .line 2920
    :goto_7
    sget-boolean v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v1, :cond_b

    move p2, v0

    :cond_b
    if-eqz v6, :cond_d

    .line 2926
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2927
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    return-object v4

    .line 2932
    :cond_c
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2933
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    .line 2934
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 2936
    :cond_d
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 2938
    :cond_e
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_10

    if-eqz v0, :cond_10

    .line 2940
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2941
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_f

    return-object v4

    .line 2946
    :cond_f
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2947
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 2948
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_8

    :cond_10
    move-object v0, v1

    :goto_8
    if-eqz v0, :cond_12

    .line 2951
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2952
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_11

    .line 2955
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 2961
    :cond_11
    invoke-direct {p0, v0, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    return-object p1

    .line 2964
    :cond_12
    invoke-direct {p0, p1, v0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_9

    .line 2965
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 4690
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 4693
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    .line 4691
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 4698
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 4701
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    .line 4699
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 4706
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 4709
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    .line 4707
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-string p0, "androidx.recyclerview.widget.RecyclerView"

    return-object p0
.end method

.method public getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1270
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method getAdapterPositionInRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    const/16 v0, 0x20c

    .line 11873
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11875
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11878
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    iget p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public getBaseline()I
    .locals 1

    .line 1325
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1326
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result p0

    return p0

    .line 1328
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result p0

    return p0
.end method

.method getChangedHolderKey(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)J
    .locals 0

    .line 4543
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    iget p0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long p0, p0

    :goto_0
    return-wide p0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5019
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5020
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 13891
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    .line 13892
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p0

    return p0

    .line 13894
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-interface {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result p0

    return p0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5045
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 5048
    :cond_0
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5049
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    :cond_1
    return-wide v1

    :cond_2
    :goto_0
    return-wide v1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5034
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5035
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5009
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4953
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 4955
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4958
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public getClipToPadding()Z
    .locals 0

    .line 1141
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    return p0
.end method

.method public getCompatAccessibilityDelegate()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 801
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    return-object p0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5277
    invoke-static {p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getEdgeEffectFactory()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2856
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    return-object p0
.end method

.method public getItemAnimator()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3916
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    return-object p0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .line 5290
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 5291
    iget-boolean v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_0

    .line 5292
    iget-object p0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p0

    .line 5295
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5297
    :cond_1
    iget-object p0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p0

    .line 5299
    :cond_2
    iget-object v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 5300
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 5301
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    .line 5303
    iget-object v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 5304
    iget-object v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    iget-object v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V

    .line 5305
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 5306
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 5307
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 5308
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5310
    :cond_3
    iput-boolean v2, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    return-object v1
.end method

.method public getItemDecorationAt(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1687
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 1692
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    return-object p0

    .line 1689
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid index for size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getItemDecorationCount()I
    .locals 0

    .line 1701
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1553
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method public getMaxFlingVelocity()I
    .locals 0

    .line 2666
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    return p0
.end method

.method public getMinFlingVelocity()I
    .locals 0

    .line 2656
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    return p0
.end method

.method getNanoTime()J
    .locals 2

    .line 6069
    sget-boolean p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz p0, :cond_0

    .line 6070
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnFlingListener;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1447
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnFlingListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnFlingListener;

    return-object p0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 0

    .line 4926
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return p0
.end method

.method public getRecycledViewPool()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1566
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    return-object p0
.end method

.method public getScrollState()I
    .locals 0

    .line 1613
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollState:I

    return p0
.end method

.method public hasFixedSize()Z
    .locals 0

    .line 1113
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    return p0
.end method

.method public hasNestedScrollingParent()Z
    .locals 0

    .line 11934
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result p0

    return p0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 0

    .line 11939
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result p0

    return p0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    .line 5414
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    .line 5415
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result p0

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

.method initAdapterManager()V
    .locals 2

    .line 1011
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    new-instance v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$6;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    return-void
.end method

.method initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 11892
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 11893
    new-instance v1, Lcom/yftech/car/widget/media/recyclerview/widget/FastScroller;

    sget v2, Lcom/yftech/car/widget/media/R$dimen;->fastscroll_default_thickness:I

    .line 11895
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v2, Lcom/yftech/car/widget/media/R$dimen;->fastscroll_minimum_range:I

    .line 11896
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v2, Lcom/yftech/car/widget/media/R$dimen;->fastscroll_margin:I

    .line 11897
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Lcom/yftech/car/widget/media/recyclerview/widget/FastScroller;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    return-void

    .line 11887
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trying to set fast scroller without both required drawables."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11889
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 2829
    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .line 4904
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4907
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 4908
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4911
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4912
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method isAccessibilityEnabled()Z
    .locals 1

    .line 3831
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAnimating()Z
    .locals 1

    .line 4721
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAttachedToWindow()Z
    .locals 0

    .line 3163
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mIsAttached:Z

    return p0
.end method

.method public isComputingLayout()Z
    .locals 0

    .line 3865
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLayoutFrozen()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2420
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isLayoutSuppressed()Z

    move-result p0

    return p0
.end method

.method public final isLayoutSuppressed()Z
    .locals 0

    .line 2383
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    return p0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 0

    .line 11909
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .locals 1

    .line 1833
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 1839
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 1840
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1841
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    return-void
.end method

.method markItemDecorInsetsDirty()V
    .locals 4

    .line 4604
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4606
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4607
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4609
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .line 4888
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4890
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4891
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    .line 4892
    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4895
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4896
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    return-void
.end method

.method public nestedScrollBy(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1902
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->nestedScrollByInternal(IILandroid/view/MotionEvent;I)V

    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 5263
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5265
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 5225
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5227
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5

    .line 4784
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4786
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4787
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 4792
    invoke-virtual {v3, p2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4793
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4796
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 4797
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9

    .line 4750
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, p2, :cond_0

    const/4 v2, -0x1

    move v3, p2

    move v4, v2

    move v2, p1

    goto :goto_0

    :cond_0
    move v3, p1

    move v2, p2

    move v4, v1

    :goto_0
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v0, :cond_4

    .line 4763
    iget-object v7, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v7, v6}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 4764
    iget v8, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v8, v2, :cond_3

    iget v8, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v8, v3, :cond_1

    goto :goto_3

    .line 4771
    :cond_1
    iget v8, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v8, p1, :cond_2

    sub-int v8, p2, p1

    .line 4772
    invoke-virtual {v7, v8, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 4774
    :cond_2
    invoke-virtual {v7, v4, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4777
    :goto_2
    iget-object v7, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4779
    :cond_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 4780
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7

    add-int v0, p1, p2

    .line 4803
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 4805
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4806
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4807
    iget v4, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_0

    neg-int v4, p2

    .line 4813
    invoke-virtual {v3, v4, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4814
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput-boolean v5, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_1

    .line 4815
    :cond_0
    iget v4, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_1

    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    .line 4820
    invoke-virtual {v3, v4, v6, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 4822
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput-boolean v5, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4826
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 4827
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 3104
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 3105
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    .line 3106
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 3107
    iget-boolean v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3108
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 3109
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    .line 3111
    :cond_1
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 3113
    sget-boolean v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_4

    .line 3115
    sget-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mGapWorker:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

    .line 3116
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mGapWorker:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

    if-nez v0, :cond_3

    .line 3117
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mGapWorker:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

    .line 3121
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    .line 3123
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 3124
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 3129
    :goto_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mGapWorker:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, v1, Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;->mFrameIntervalNs:J

    .line 3130
    sget-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mGapWorker:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3132
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mGapWorker:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;->add(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    :cond_4
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 3138
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 3139
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 3140
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 3142
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopScroll()V

    const/4 v0, 0x0

    .line 3143
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 3144
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 3145
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V

    .line 3147
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3148
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3149
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->onDetach()V

    .line 3151
    sget-boolean v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mGapWorker:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

    if-eqz v0, :cond_2

    .line 3153
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mGapWorker:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;->remove(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    const/4 v0, 0x0

    .line 3154
    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mGapWorker:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 4675
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4677
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4679
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .locals 1

    .line 3808
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    return-void
.end method

.method onExitLayoutOrScroll()V
    .locals 1

    const/4 v0, 0x1

    .line 3812
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-void
.end method

.method onExitLayoutOrScroll(Z)V
    .locals 2

    .line 3816
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3817
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3822
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-eqz p1, :cond_0

    .line 3824
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 3825
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 3615
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3618
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return v1

    .line 3621
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    .line 3623
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3624
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    .line 3627
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3631
    :goto_0
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    .line 3632
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    goto :goto_2

    .line 3636
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    const/16 v0, 0x1a

    .line 3637
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 3638
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_5

    neg-float v0, v0

    goto :goto_1

    .line 3643
    :cond_5
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v0

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    move v3, v0

    :goto_2
    cmpl-float v4, v0, v2

    if-nez v4, :cond_7

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_8

    .line 3656
    :cond_7
    iget v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, p1, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->nestedScrollByInternal(IILandroid/view/MotionEvent;I)V

    :cond_8
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 3306
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 3314
    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 3315
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3316
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->cancelScroll()V

    return v2

    .line 3320
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_2

    return v1

    .line 3324
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 3325
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 3327
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 3328
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3330
    :cond_3
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 3333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 3399
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 3364
    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3365
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 3366
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_2

    .line 3410
    :pswitch_3
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->cancelScroll()V

    goto/16 :goto_2

    .line 3370
    :pswitch_4
    iget v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_4

    const-string p1, "RecyclerView"

    .line 3372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3377
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 3378
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    .line 3379
    iget v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollState:I

    if-eq v4, v2, :cond_b

    .line 3380
    iget v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    sub-int v4, v5, v4

    .line 3381
    iget v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    sub-int v6, p1, v6

    if-eqz v0, :cond_5

    .line 3383
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v0, v4, :cond_5

    .line 3384
    iput v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchX:I

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    if-eqz v3, :cond_6

    .line 3387
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v3, v4, :cond_6

    .line 3388
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchY:I

    move v0, v2

    :cond_6
    if-eqz v0, :cond_b

    .line 3392
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setScrollState(I)V

    goto :goto_2

    .line 3404
    :pswitch_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 3405
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    goto :goto_2

    .line 3337
    :pswitch_6
    iget-boolean v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v4, :cond_7

    .line 3338
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 3340
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 3342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 3344
    iget p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v4, 0x2

    if-ne p1, v4, :cond_8

    .line 3345
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3346
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3347
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 3351
    :cond_8
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aput v1, v4, v2

    aput v1, p1, v1

    if-eqz v0, :cond_9

    move p1, v2

    goto :goto_1

    :cond_9
    move p1, v1

    :goto_1
    if-eqz v3, :cond_a

    or-int/lit8 p1, p1, 0x2

    .line 3360
    :cond_a
    invoke-virtual {p0, p1, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 3413
    :cond_b
    :goto_2
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p0, v2, :cond_c

    move v1, v2

    :cond_c
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    const-string p1, "RV OnLayout"

    .line 4588
    invoke-static {p1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 4589
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 4590
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    const/4 p1, 0x1

    .line 4591
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 3665
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3666
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    .line 3669
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->isAutoMeasureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 3670
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3671
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3680
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v4, v5, v6, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;II)V

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    if-ne v3, v4, :cond_1

    move v2, v1

    .line 3684
    :cond_1
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    .line 3686
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_2

    goto :goto_0

    .line 3690
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v0, v1, :cond_3

    .line 3691
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3695
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3696
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3697
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3700
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 3704
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3705
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3706
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3707
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3705
    invoke-virtual {v0, v2, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3708
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3709
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3711
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 3714
    :cond_4
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 3715
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    goto :goto_4

    :cond_5
    :goto_0
    return-void

    .line 3717
    :cond_6
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_7

    .line 3718
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;II)V

    return-void

    .line 3722
    :cond_7
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_9

    .line 3723
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3724
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3725
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3726
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3728
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_8

    .line 3729
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_1

    .line 3732
    :cond_8
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3733
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput-boolean v2, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3735
    :goto_1
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 3736
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_2

    .line 3737
    :cond_9
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_a

    .line 3743
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void

    .line 3747
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_b

    .line 3748
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mItemCount:I

    goto :goto_3

    .line 3750
    :cond_b
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput v2, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 3752
    :goto_3
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3753
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v3, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;II)V

    .line 3754
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 3755
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iput-boolean v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    :goto_4
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 3094
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3099
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1466
    instance-of v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    if-nez v0, :cond_0

    .line 1467
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1471
    :cond_0
    check-cast p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPendingSavedState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    .line 1472
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPendingSavedState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1480
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1452
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1453
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPendingSavedState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 1454
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPendingSavedState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;->copyFrom(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;)V

    goto :goto_0

    .line 1455
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 1456
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 1458
    iput-object p0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    :goto_0
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onScrolled(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 3778
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 3780
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->invalidateGlows()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 3428
    iget-boolean v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    const/4 v8, 0x0

    if-nez v0, :cond_1b

    iget-boolean v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_0

    goto/16 :goto_b

    .line 3431
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    .line 3432
    invoke-direct/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->cancelScroll()V

    return v9

    .line 3436
    :cond_1
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_2

    return v8

    .line 3440
    :cond_2
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    .line 3441
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    .line 3443
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 3444
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3448
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 3449
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_4

    .line 3452
    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aput v8, v3, v9

    aput v8, v2, v8

    .line 3454
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 3455
    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v2, v2, v8

    int-to-float v2, v2

    iget-object v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v3, v9

    int-to-float v3, v3

    invoke-virtual {v12, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v2, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_a

    .line 3556
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    .line 3475
    :pswitch_2
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3476
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 3477
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_a

    .line 3576
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->cancelScroll()V

    goto/16 :goto_a

    .line 3482
    :pswitch_4
    iget v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    const-string v0, "RecyclerView"

    .line 3484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 3489
    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v13, v1

    .line 3490
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v14, v0

    .line 3491
    iget v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v0, v13

    .line 3492
    iget v1, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v1, v14

    .line 3494
    iget v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollState:I

    if-eq v2, v9, :cond_a

    if-eqz v10, :cond_7

    if-lez v0, :cond_6

    .line 3498
    iget v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 3500
    :cond_6
    iget v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_7

    move v2, v9

    goto :goto_1

    :cond_7
    move v2, v8

    :goto_1
    if-eqz v11, :cond_9

    if-lez v1, :cond_8

    .line 3509
    iget v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v1, v3

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 3511
    :cond_8
    iget v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v1, v3

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    if-eqz v1, :cond_9

    move v2, v9

    :cond_9
    if-eqz v2, :cond_a

    .line 3518
    invoke-virtual {v6, v9}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :cond_a
    move v15, v0

    move/from16 v16, v1

    .line 3522
    iget v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v0, v9, :cond_19

    .line 3523
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v8, v0, v8

    .line 3524
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v8, v0, v9

    if-eqz v10, :cond_b

    move v1, v15

    goto :goto_3

    :cond_b
    move v1, v8

    :goto_3
    if-eqz v11, :cond_c

    move/from16 v2, v16

    goto :goto_4

    :cond_c
    move v2, v8

    .line 3527
    :goto_4
    iget-object v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    iget-object v4, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 3525
    invoke-virtual/range {v0 .. v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3530
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v0, v0, v8

    sub-int/2addr v15, v0

    .line 3531
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v0, v0, v9

    sub-int v16, v16, v0

    .line 3533
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v0, v8

    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v2, v8

    add-int/2addr v1, v2

    aput v1, v0, v8

    .line 3534
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v0, v9

    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v2, v9

    add-int/2addr v1, v2

    aput v1, v0, v9

    .line 3536
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_d
    move/from16 v0, v16

    .line 3539
    iget-object v1, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v1, v1, v8

    sub-int/2addr v13, v1

    iput v13, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 3540
    iget-object v1, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v1, v1, v9

    sub-int/2addr v14, v1

    iput v14, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchY:I

    if-eqz v10, :cond_e

    move v1, v15

    goto :goto_5

    :cond_e
    move v1, v8

    :goto_5
    if-eqz v11, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v8

    .line 3542
    :goto_6
    invoke-virtual {v6, v1, v2, v7, v8}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3546
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3548
    :cond_10
    iget-object v1, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mGapWorker:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

    if-eqz v1, :cond_19

    if-nez v15, :cond_11

    if-eqz v0, :cond_19

    .line 3549
    :cond_11
    iget-object v1, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mGapWorker:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;

    invoke-virtual {v1, v6, v15, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker;->postFromTraversal(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V

    goto/16 :goto_a

    .line 3561
    :pswitch_5
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3563
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v0, 0x0

    if-eqz v10, :cond_12

    .line 3565
    iget-object v1, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    neg-float v1, v1

    goto :goto_7

    :cond_12
    move v1, v0

    :goto_7
    if-eqz v11, :cond_13

    .line 3567
    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_8

    :cond_13
    move v2, v0

    :goto_8
    cmpl-float v3, v1, v0

    if-nez v3, :cond_14

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_15

    :cond_14
    float-to-int v0, v1

    float-to-int v1, v2

    .line 3568
    invoke-virtual {v6, v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result v0

    if-nez v0, :cond_16

    .line 3569
    :cond_15
    invoke-virtual {v6, v8}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3571
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->resetScroll()V

    move v8, v9

    goto :goto_a

    .line 3459
    :pswitch_6
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3460
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 3461
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    if-eqz v10, :cond_17

    move v0, v9

    goto :goto_9

    :cond_17
    move v0, v8

    :goto_9
    if-eqz v11, :cond_18

    or-int/lit8 v0, v0, 0x2

    .line 3470
    :cond_18
    invoke-virtual {v6, v0, v8}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    :cond_19
    :goto_a
    if-nez v8, :cond_1a

    .line 3582
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3584
    :cond_1a
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v9

    :cond_1b
    :goto_b
    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method postAnimationRunner()V
    .locals 1

    .line 3924
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 3925
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 3926
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    :cond_0
    return-void
.end method

.method processDataSetCompletelyChanged(Z)V
    .locals 1

    .line 4878
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    const/4 p1, 0x1

    .line 4879
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4880
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->markKnownViewsInvalid()V

    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 4476
    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 4477
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4478
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4479
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChangedHolderKey(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 4480
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->addToOldChangeHolders(JLcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4482
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->addToPreLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method removeAndRecycleViews()V
    .locals 2

    .line 1214
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 1222
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1223
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1226
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->clear()V

    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .locals 2

    .line 1530
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 1531
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1533
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 1534
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1535
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    xor-int/lit8 p1, v0, 0x1

    .line 1541
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    return v0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    .line 4519
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4521
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4522
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_0

    .line 4523
    :cond_0
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4524
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4525
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4532
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4534
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 4535
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 2
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1728
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1733
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1734
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1736
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1737
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 2

    .line 1710
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 1715
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->removeItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void

    .line 1712
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid index for size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeOnChildAttachStateChangeListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1358
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 1361
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnItemTouchListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3232
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3233
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 3234
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;

    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1795
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1796
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeRecyclerListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerListener;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1312
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method repositionShadowingViews()V
    .locals 7

    .line 5689
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5691
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5692
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5693
    iget-object v4, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v4, :cond_1

    .line 5694
    iget-object v3, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5695
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 5696
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 5697
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v2, v5, :cond_1

    .line 5699
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 5700
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 5698
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 3036
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3037
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 3039
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 3082
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 3418
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3420
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 3421
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3423
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 4596
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_0

    .line 4597
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4599
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    :goto_0
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    .line 4725
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4727
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4732
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4733
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1879
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p0, "RecyclerView"

    const-string p1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 1880
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1884
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return-void

    .line 1887
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1888
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    const/4 v0, 0x0

    .line 1890
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    :cond_5
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;I)Z
    .locals 18

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    .line 2077
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2078
    iget-object v0, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    .line 2079
    iget-object v0, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v13, v0, v13

    .line 2080
    iget-object v0, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v13, v0, v12

    .line 2081
    iget-object v0, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    invoke-virtual {v8, v9, v10, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 2082
    iget-object v0, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v0, v0, v13

    .line 2083
    iget-object v1, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v1, v1, v12

    sub-int v2, v9, v0

    sub-int v3, v10, v1

    move v14, v0

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    goto :goto_0

    :cond_0
    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    .line 2087
    :goto_0
    iget-object v0, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2088
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->invalidate()V

    .line 2091
    :cond_1
    iget-object v0, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v13, v0, v13

    .line 2092
    iget-object v0, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v13, v0, v12

    .line 2093
    iget-object v5, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    iget-object v7, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 2095
    iget-object v0, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v0, v0, v13

    sub-int v0, v16, v0

    .line 2096
    iget-object v1, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v1, v1, v12

    sub-int v1, v17, v1

    .line 2097
    iget-object v2, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v2, v2, v13

    if-nez v2, :cond_3

    iget-object v2, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v2, v2, v12

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v13

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v12

    .line 2100
    :goto_2
    iget v3, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iget-object v4, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v13

    sub-int/2addr v3, v4

    iput v3, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 2101
    iget v3, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iget-object v4, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v12

    sub-int/2addr v3, v4

    iput v3, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 2102
    iget-object v3, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v4, v3, v13

    iget-object v5, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v13

    add-int/2addr v4, v5

    aput v4, v3, v13

    .line 2103
    iget-object v3, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v4, v3, v12

    iget-object v5, v8, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v12

    add-int/2addr v4, v5

    aput v4, v3, v12

    .line 2105
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    if-eqz v11, :cond_4

    const/16 v3, 0x2002

    .line 2106
    invoke-static {v11, v3}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2107
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v0, v0

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v1, v1

    invoke-direct {v8, v3, v0, v4, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->pullGlows(FFFF)V

    .line 2109
    :cond_4
    invoke-virtual/range {p0 .. p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_5
    if-nez v14, :cond_6

    if-eqz v15, :cond_7

    .line 2112
    :cond_6
    invoke-virtual {v8, v14, v15}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 2114
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2115
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_8
    if-nez v2, :cond_a

    if-nez v14, :cond_a

    if-eqz v15, :cond_9

    goto :goto_3

    :cond_9
    move v12, v13

    :cond_a
    :goto_3
    return v12
.end method

.method scrollStep(II[I)V
    .locals 4
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1970
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 1971
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const-string v0, "RV Scroll"

    .line 1973
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1974
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1979
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, p1, v2, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 1982
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, p2, v2, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    goto :goto_1

    :cond_1
    move p2, v0

    .line 1985
    :goto_1
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 1986
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->repositionShadowingViews()V

    .line 1988
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1989
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    if-eqz p3, :cond_2

    .line 1992
    aput p1, p3, v0

    const/4 p0, 0x1

    .line 1993
    aput p2, p3, p0

    :cond_2
    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    const-string p0, "RecyclerView"

    const-string p1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    .line 1873
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 1819
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    .line 1822
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 1823
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string p0, "RecyclerView"

    const-string p1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 1824
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1828
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1829
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 3893
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3896
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setAccessibilityDelegateCompat(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 811
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 812
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1203
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v1, 0x1

    .line 1204
    invoke-direct {p0, p1, v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setAdapterInternal(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;ZZ)V

    .line 1205
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 1206
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1754
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_0

    return-void

    .line 1757
    :cond_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1758
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method setChildImportantForAccessibilityInternal(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 11846
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11847
    iput p2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11848
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    .line 11851
    :cond_0
    iget-object p0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 1118
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 1119
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->invalidateGlows()V

    .line 1121
    :cond_0
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 1122
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1123
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz p1, :cond_1

    .line 1124
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2842
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2843
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    .line 2844
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->invalidateGlows()V

    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .line 1105
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    return-void
.end method

.method public setItemAnimator(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 2
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3797
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 3798
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 3799
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3801
    :cond_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 3802
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz p1, :cond_1

    .line 3803
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 0

    .line 1603
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2411
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    return-void
.end method

.method public setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1387
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    return-void

    .line 1390
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 1393
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_3

    .line 1395
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1398
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1399
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1400
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 1402
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_2

    .line 1403
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1405
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    .line 1406
    iput-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    goto :goto_0

    .line 1408
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 1411
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1412
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_5

    .line 1414
    iget-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_4

    .line 1419
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    .line 1420
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz p1, :cond_5

    .line 1421
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    goto :goto_1

    .line 1415
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already attached to a RecyclerView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 1417
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1424
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 1425
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2434
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    return-void

    :cond_0
    const/4 v1, 0x4

    .line 2438
    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2439
    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    .line 2440
    invoke-virtual {p1, v2}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    .line 2441
    invoke-virtual {p1, v2}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2442
    invoke-virtual {p1, v1}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2443
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 2450
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    .line 2452
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 0

    .line 11904
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnFlingListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnFlingListener;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnFlingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1437
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mOnFlingListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnFlingListener;

    return-void
.end method

.method public setOnScrollListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1770
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    .line 4943
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return-void
.end method

.method public setRecycledViewPool(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1578
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->setRecycledViewPool(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public setRecyclerListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerListener;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1287
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecyclerListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerListener;

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 1617
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1624
    :cond_0
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1626
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    .line 1628
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4

    .line 1154
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const-string v1, "RecyclerView"

    .line 1157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1165
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTouchSlop:I

    goto :goto_1

    .line 1161
    :goto_0
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTouchSlop:I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setViewCacheExtension(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewCacheExtension;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewCacheExtension;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1588
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->setViewCacheExtension(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewCacheExtension;)V

    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 3877
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 3880
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    move p1, v1

    .line 3885
    :cond_1
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2465
    invoke-virtual {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v0, -0x80000000

    .line 2477
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;I)V
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 2496
    invoke-virtual/range {v0 .. v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    return-void
.end method

.method smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2534
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p0, "RecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2535
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2539
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return-void

    .line 2542
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move p1, v1

    .line 2545
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    move p2, v1

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_b

    :cond_4
    const/high16 v0, -0x80000000

    const/4 v2, 0x1

    if-eq p4, v0, :cond_6

    if-lez p4, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_a

    if-eqz p5, :cond_9

    if-eqz p1, :cond_7

    move v1, v2

    :cond_7
    if-eqz p2, :cond_8

    or-int/lit8 v1, v1, 0x2

    .line 2559
    :cond_8
    invoke-virtual {p0, v1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 2561
    :cond_9
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewFlinger:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 2563
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_b
    :goto_2
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    .line 1860
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    .line 1863
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string p0, "RecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 1864
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1868
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)V

    return-void
.end method

.method startInterceptRequestLayout()V
    .locals 2

    .line 2278
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 2279
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2280
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 0

    .line 11914
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p0

    return p0
.end method

.method public startNestedScroll(II)Z
    .locals 0

    .line 11919
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p0

    return p0
.end method

.method stopInterceptRequestLayout(Z)V
    .locals 3

    .line 2295
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2302
    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2304
    iget-boolean v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v2, :cond_1

    .line 2313
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2315
    :cond_1
    iget v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    .line 2317
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_2

    .line 2319
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 2321
    :cond_2
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez p1, :cond_3

    .line 2322
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2325
    :cond_3
    iget p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    return-void
.end method

.method public stopNestedScroll()V
    .locals 0

    .line 11924
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 0

    .line 11929
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 2636
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 2637
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    return-void
.end method

.method public final suppressLayout(Z)V
    .locals 9

    .line 2355
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not suppressLayout in layout or scroll"

    .line 2356
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2358
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 2359
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 2360
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 2362
    :cond_0
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    goto :goto_0

    .line 2364
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 2365
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2367
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    .line 2368
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 2369
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2370
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_2
    :goto_0
    return-void
.end method

.method public swapAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1186
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v0, 0x1

    .line 1187
    invoke-direct {p0, p1, v0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setAdapterInternal(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;ZZ)V

    .line 1188
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 1189
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 6

    .line 4837
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    add-int v1, p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4841
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4842
    invoke-static {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4843
    invoke-virtual {v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 4846
    :cond_0
    iget v5, v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_1

    iget v5, v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v1, :cond_1

    const/4 v5, 0x2

    .line 4849
    invoke-virtual {v4, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4850
    invoke-virtual {v4, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 4852
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4855
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    return-void
.end method
