.class public Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;
.super Landroid/view/ViewGroup;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$DataSetChangeObserver;,
        Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;,
        Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$BasicAccessibilityProvider;,
        Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;,
        Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageTransformer;,
        Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$OnPageChangeCallback;,
        Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SmoothScrollToPosition;,
        Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;,
        Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;,
        Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$RecyclerViewImpl;,
        Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SavedState;,
        Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$OffscreenPageLimit;,
        Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$ScrollState;,
        Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$Orientation;
    }
.end annotation


# static fields
.field private static final EMPTY_INSETS:Landroidx/core/view/WindowInsetsCompat;

.field public static final OFFSCREEN_PAGE_LIMIT_DEFAULT:I = -0x1

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static sFeatureEnhancedA11yEnabled:Z = true


# instance fields
.field mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

.field mCurrentItem:I

.field private mCurrentItemDataSetChangeObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field mCurrentItemDirty:Z

.field private mExternalPageChangeCallbacks:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

.field private mFakeDragger:Lcom/yftech/car/widget/media/viewpager2/widget/FakeDrag;

.field mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

.field private mOffscreenPageLimit:I

.field private mPageChangeEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

.field private mPageTransformerAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/PageTransformerAdapter;

.field private mPagerSnapHelper:Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;

.field private mPendingAdapterState:Landroid/os/Parcelable;

.field private mPendingCurrentItem:I

.field mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

.field private mSavedItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mSavedItemAnimatorPresent:Z

.field mScrollEventAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;

.field private final mTmpChildRect:Landroid/graphics/Rect;

.field private final mTmpContainerRect:Landroid/graphics/Rect;

.field private mUserInputEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    sput-object v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->EMPTY_INSETS:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 166
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 136
    new-instance v0, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 141
    new-instance v1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$1;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v1, -0x1

    .line 151
    iput v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v2, 0x0

    .line 159
    iput-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 160
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 162
    iput v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 167
    invoke-direct {p0, p1, v2}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 171
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 136
    new-instance v0, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 141
    new-instance v1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$1;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v1, -0x1

    .line 151
    iput v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v2, 0x0

    .line 159
    iput-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 160
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 162
    iput v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 134
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 136
    new-instance p3, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 p3, 0x0

    .line 140
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 141
    new-instance v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$1;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v0, -0x1

    .line 151
    iput v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v1, 0x0

    .line 159
    iput-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 160
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 p3, 0x1

    .line 161
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 162
    iput v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 133
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 134
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 136
    new-instance p3, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 p4, 0x3

    invoke-direct {p3, p4}, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 p3, 0x0

    .line 140
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 141
    new-instance p4, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$1;

    invoke-direct {p4, p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$1;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;)V

    iput-object p4, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 p4, -0x1

    .line 151
    iput p4, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 160
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 p3, 0x1

    .line 161
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 162
    iput p4, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private consumeAllInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1015
    sget-object p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->EMPTY_INSETS:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1016
    sget-object p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->EMPTY_INSETS:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0

    .line 1020
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private enforceChildFillListener()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;
    .locals 1

    .line 272
    new-instance v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$4;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$4;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;)V

    return-object v0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 188
    sget-boolean v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->sFeatureEnhancedA11yEnabled:Z

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;)V

    goto :goto_0

    .line 190
    :cond_0
    new-instance v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$BasicAccessibilityProvider;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$BasicAccessibilityProvider;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;)V

    :goto_0
    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 192
    new-instance v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-direct {v0, p0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$RecyclerViewImpl;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 193
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setId(I)V

    .line 194
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 196
    new-instance v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    invoke-direct {v0, p0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    .line 197
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 198
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->setOrientation(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 201
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->enforceChildFillListener()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 207
    new-instance p1, Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;

    .line 209
    new-instance p1, Lcom/yftech/car/widget/media/viewpager2/widget/FakeDrag;

    iget-object p2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;

    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-direct {p1, p0, p2, v0}, Lcom/yftech/car/widget/media/viewpager2/widget/FakeDrag;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mFakeDragger:Lcom/yftech/car/widget/media/viewpager2/widget/FakeDrag;

    .line 210
    new-instance p1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;

    .line 211
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;

    iget-object p2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    .line 214
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->addOnScrollListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 216
    new-instance p1, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 217
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;

    iget-object p2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;->setOnPageChangeCallback(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 221
    new-instance p1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$2;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$2;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;)V

    .line 239
    new-instance p2, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$3;

    invoke-direct {p2, p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$3;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;)V

    .line 251
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 252
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 255
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    iget-object p2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2, v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onInitialize(Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    .line 256
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 260
    new-instance p1, Lcom/yftech/car/widget/media/viewpager2/widget/PageTransformerAdapter;

    iget-object p2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/PageTransformerAdapter;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/PageTransformerAdapter;

    .line 261
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/PageTransformerAdapter;

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 263
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private registerCurrentItemDataSetTracker(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 478
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    return-void
.end method

.method private restorePendingState()V
    .locals 4

    .line 348
    iget v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    if-eqz v2, :cond_3

    .line 357
    instance-of v2, v0, Lcom/yftech/car/widget/media/viewpager2/adapter/StatefulAdapter;

    if-eqz v2, :cond_2

    .line 358
    move-object v2, v0

    check-cast v2, Lcom/yftech/car/widget/media/viewpager2/adapter/StatefulAdapter;

    iget-object v3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    invoke-interface {v2, v3}, Lcom/yftech/car/widget/media/viewpager2/adapter/StatefulAdapter;->restoreState(Landroid/os/Parcelable;)V

    :cond_2
    const/4 v2, 0x0

    .line 360
    iput-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    :cond_3
    const/4 v2, 0x0

    .line 363
    iget v3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 364
    iput v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 365
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 366
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onRestorePendingState()V

    return-void
.end method

.method private setOrientation(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 301
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->ViewPager2:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 302
    sget-object v3, Lcom/yftech/car/widget/media/R$styleable;->ViewPager2:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 305
    :try_start_0
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->ViewPager2_android_orientation:I

    const/4 p2, 0x0

    .line 306
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 305
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->setOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 309
    throw p0
.end method

.method private unregisterCurrentItemDataSetTracker(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 484
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1213
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->addItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public addItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1232
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->addItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public beginFakeDrag()Z
    .locals 0

    .line 729
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mFakeDragger:Lcom/yftech/car/widget/media/viewpager2/widget/FakeDrag;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/FakeDrag;->beginFakeDrag()Z

    move-result p0

    return p0
.end method

.method public canScrollHorizontally(I)Z
    .locals 0

    .line 871
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p0

    return p0
.end method

.method public canScrollVertically(I)Z
    .locals 0

    .line 876
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 373
    instance-of v1, v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SavedState;

    if-eqz v1, :cond_0

    .line 374
    check-cast v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SavedState;

    iget v0, v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    .line 375
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getId()I

    move-result v1

    .line 376
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 380
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 383
    invoke-direct {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->restorePendingState()V

    return-void
.end method

.method public endFakeDrag()Z
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mFakeDragger:Lcom/yftech/car/widget/media/viewpager2/widget/FakeDrag;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/FakeDrag;->endFakeDrag()Z

    move-result p0

    return p0
.end method

.method public fakeDragBy(F)Z
    .locals 0
    .param p1    # F
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "SupportAnnotationUsage"
            }
        .end annotation

        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 751
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mFakeDragger:Lcom/yftech/car/widget/media/viewpager2/widget/FakeDrag;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/FakeDrag;->fakeDragBy(F)Z

    move-result p0

    return p0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->handlesGetAccessibilityClassName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onGetAccessibilityClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 297
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 490
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentItem()I
    .locals 0

    .line 691
    iget p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    return p0
.end method

.method public getItemDecorationAt(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1244
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object p0

    return-object p0
.end method

.method public getItemDecorationCount()I
    .locals 0

    .line 1253
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p0

    return p0
.end method

.method public getOffscreenPageLimit()I
    .locals 0

    .line 866
    iget p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    return p0
.end method

.method getPageSize()I
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 565
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result p0

    if-nez p0, :cond_0

    .line 566
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p0, v0

    goto :goto_0

    .line 567
    :cond_0
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getScrollState()I
    .locals 0

    .line 703
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;->getScrollState()I

    move-result p0

    return p0
.end method

.method public invalidateItemDecorations()V
    .locals 0

    .line 1261
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public isFakeDragging()Z
    .locals 0

    .line 777
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mFakeDragger:Lcom/yftech/car/widget/media/viewpager2/widget/FakeDrag;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/FakeDrag;->isFakeDragging()Z

    move-result p0

    return p0
.end method

.method isRtl()Z
    .locals 1

    .line 585
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserInputEnabled()Z
    .locals 0

    .line 819
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 983
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 984
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 996
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 997
    iget-object v3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/view/WindowInsets;

    invoke-direct {v4, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1009
    :cond_1
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->consumeAllInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 965
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 966
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 524
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p1

    .line 525
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v0

    .line 529
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 530
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, v1, Landroid/graphics/Rect;->right:I

    .line 531
    iget-object p2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getPaddingTop()I

    move-result p4

    iput p4, p2, Landroid/graphics/Rect;->top:I

    .line 532
    iget-object p2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    .line 534
    iget-object p2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    const p4, 0x800033

    invoke-static {p4, p1, v0, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 535
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object p4, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object p5, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->layout(IIII)V

    .line 538
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    if-eqz p1, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->updateCurrentItem()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 506
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->measureChild(Landroid/view/View;II)V

    .line 507
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    .line 508
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    .line 509
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getMeasuredState()I

    move-result v2

    .line 511
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 512
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 514
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 515
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 517
    invoke-static {v0, p1, v2}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v2, 0x10

    .line 518
    invoke-static {v1, p2, v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    move-result p2

    .line 517
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 336
    instance-of v0, p1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SavedState;

    if-nez v0, :cond_0

    .line 337
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 341
    :cond_0
    check-cast p1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SavedState;

    .line 342
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 343
    iget v0, p1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    iput v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 344
    iget-object p1, p1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 316
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 317
    new-instance v1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SavedState;

    invoke-direct {v1, v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 319
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getId()I

    move-result v0

    iput v0, v1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    .line 320
    iget v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    :goto_0
    iput v0, v1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    .line 322
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 323
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    iput-object p0, v1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    goto :goto_1

    .line 325
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    .line 326
    instance-of v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/StatefulAdapter;

    if-eqz v0, :cond_2

    .line 327
    check-cast p0, Lcom/yftech/car/widget/media/viewpager2/adapter/StatefulAdapter;

    invoke-interface {p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/StatefulAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    :cond_2
    :goto_1
    return-object v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 496
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not support direct child views"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .line 972
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->handlesPerformAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onPerformAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 975
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public registerOnPageChangeCallback(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$OnPageChangeCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 888
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method public removeItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1284
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->removeItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 0

    .line 1271
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    return-void
.end method

.method public requestTransform()V
    .locals 5

    .line 946
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/PageTransformerAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/viewpager2/widget/PageTransformerAdapter;->getPageTransformer()Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageTransformer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;->getRelativeScrollPosition()D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v3, v2

    sub-double/2addr v0, v3

    double-to-float v0, v0

    .line 952
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getPageSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 953
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/PageTransformerAdapter;

    invoke-virtual {p0, v2, v0, v1}, Lcom/yftech/car/widget/media/viewpager2/widget/PageTransformerAdapter;->onPageScrolled(IFI)V

    return-void
.end method

.method public setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 466
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onDetachAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 468
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->unregisterCurrentItemDataSetTracker(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 469
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 470
    iput v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 471
    invoke-direct {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->restorePendingState()V

    .line 472
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onAttachAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 473
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->registerCurrentItemDataSetTracker(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 597
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 609
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 613
    invoke-virtual {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZZ)V

    return-void

    .line 610
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCurrentItemEx(IZ)V
    .locals 1

    .line 617
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 621
    invoke-virtual {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZZ)V

    return-void

    .line 618
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 6

    .line 628
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 631
    iget p2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    .line 632
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    :cond_0
    return-void

    .line 636
    :cond_1
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_2

    return-void

    .line 640
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 641
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-eqz p3, :cond_4

    .line 644
    iget p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-ne p1, p3, :cond_3

    iget-object p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;->isIdle()Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    .line 648
    :cond_3
    iget p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-ne p1, p3, :cond_4

    if-eqz p2, :cond_4

    return-void

    .line 657
    :cond_4
    iget p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    int-to-double v0, p3

    .line 658
    iput p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 659
    iget-object p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetNewCurrentItem()V

    .line 661
    iget-object p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;->isIdle()Z

    move-result p3

    if-nez p3, :cond_5

    .line 663
    iget-object p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;->getRelativeScrollPosition()D

    move-result-wide v0

    .line 668
    :cond_5
    iget-object p3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {p3, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;->notifyProgrammaticScroll(IZ)V

    if-nez p2, :cond_6

    .line 670
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :cond_6
    int-to-double p2, p1

    sub-double v2, p2, v0

    .line 675
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_8

    .line 676
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    cmpl-double p2, p2, v0

    if-lez p2, :cond_7

    add-int/lit8 p2, p1, -0x3

    goto :goto_0

    :cond_7
    add-int/lit8 p2, p1, 0x3

    :goto_0
    invoke-virtual {v2, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 678
    iget-object p2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SmoothScrollToPosition;

    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-direct {p3, p1, p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SmoothScrollToPosition;-><init>(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 680
    :cond_8
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_1
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x11
    .end annotation

    .line 959
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 960
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetLayoutDirection()V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 849
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 852
    :cond_1
    :goto_0
    iput p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 854
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 577
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetOrientation()V

    return-void
.end method

.method public setPageTransformer(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 3
    .param p1    # Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageTransformer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 917
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    if-nez v1, :cond_0

    .line 918
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getItemAnimator()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x1

    .line 919
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 921
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setItemAnimator(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 923
    :cond_1
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    if-eqz v1, :cond_2

    .line 924
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setItemAnimator(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 925
    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 v0, 0x0

    .line 926
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 932
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/PageTransformerAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/viewpager2/widget/PageTransformerAdapter;->getPageTransformer()Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageTransformer;

    move-result-object v0

    if-ne p1, v0, :cond_3

    return-void

    .line 935
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/PageTransformerAdapter;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/PageTransformerAdapter;->setPageTransformer(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 936
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->requestTransform()V

    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 0

    .line 808
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 809
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetUserInputEnabled()V

    return-void
.end method

.method snapToPage()V
    .locals 4

    .line 786
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;

    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->findSnapView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 790
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;

    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->calculateDistanceToFinalSnap(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 792
    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_1

    aget v2, v0, v3

    if-eqz v2, :cond_2

    .line 793
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    aget v1, v0, v1

    aget v0, v0, v3

    invoke-virtual {p0, v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_2
    return-void
.end method

.method public unregisterOnPageChangeCallback(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$OnPageChangeCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 898
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;->removeOnPageChangeCallback(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method updateCurrentItem()V
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;

    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->findSnapView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 555
    iget v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v1

    if-nez v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;->onPageSelected(I)V

    :cond_1
    const/4 v0, 0x0

    .line 560
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    return-void

    .line 546
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Design assumption violated."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
