.class public Lcom/alibaba/android/vlayout/VirtualLayoutManager;
.super Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;
.source "VirtualLayoutManager.java"

# interfaces
.implements Lcom/alibaba/android/vlayout/LayoutManagerHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/vlayout/VirtualLayoutManager$CacheViewHolder;,
        Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutViewHolder;,
        Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;,
        Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;,
        Lcom/alibaba/android/vlayout/VirtualLayoutManager$InflateLayoutParams;,
        Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field private static DEFAULT_LAYOUT_HELPER:Lcom/alibaba/android/vlayout/LayoutHelper; = null

.field public static final HORIZONTAL:I = 0x0

.field private static final MAX_NO_SCROLLING_SIZE:I = 0x7ffffff

.field protected static final TAG:Ljava/lang/String; = "VirtualLayoutManager"

.field private static final TRACE_LAYOUT:Ljava/lang/String; = "VLM onLayoutChildren"

.field private static final TRACE_SCROLL:Ljava/lang/String; = "VLM scroll"

.field public static final VERTICAL:I = 0x1

.field private static sDebuggable:Z = false


# instance fields
.field private mDecorInsets:Landroid/graphics/Rect;

.field private mDefaultLayoutHelper:Lcom/alibaba/android/vlayout/LayoutHelper;

.field private mEnableMarginOverlapping:Z

.field private mFixAreaAdjustor:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

.field private mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

.field private mLayoutViewBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewBindListener;

.field private mLayoutViewFatory:Lcom/alibaba/android/vlayout/LayoutViewFactory;

.field private mMaxMeasureSize:I

.field private mMeasuredFullSpace:I

.field private mNested:I

.field private mNestedScrolling:Z

.field private mNoScrolling:Z

.field protected mOrientationHelper:Lcom/alibaba/android/vlayout/OrientationHelperEx;

.field private mRangeLengths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/alibaba/android/vlayout/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mSecondaryOrientationHelper:Lcom/alibaba/android/vlayout/OrientationHelperEx;

.field private mSpaceMeasured:Z

.field private mSpaceMeasuring:Z

.field private mTempAnchorInfoWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;

.field private mTempLayoutStateWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;

.field private newHelpersSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/vlayout/LayoutHelper;",
            ">;"
        }
    .end annotation
.end field

.field private oldHelpersSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/vlayout/LayoutHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 718
    new-instance v0, Lcom/alibaba/android/vlayout/layout/DefaultLayoutHelper;

    invoke-direct {v0}, Lcom/alibaba/android/vlayout/layout/DefaultLayoutHelper;-><init>()V

    sput-object v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->DEFAULT_LAYOUT_HELPER:Lcom/alibaba/android/vlayout/LayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNoScrolling:Z

    .line 91
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNestedScrolling:Z

    .line 93
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mEnableMarginOverlapping:Z

    const/4 p3, -0x1

    .line 95
    iput p3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mMaxMeasureSize:I

    .line 165
    sget-object p3, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->mDefaultAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iput-object p3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mFixAreaAdjustor:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    .line 175
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->newHelpersSet:Ljava/util/HashMap;

    .line 176
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->oldHelpersSet:Ljava/util/HashMap;

    .line 306
    new-instance p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;

    invoke-direct {p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;-><init>()V

    iput-object p3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempAnchorInfoWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;

    .line 397
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNested:I

    .line 591
    new-instance p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;

    invoke-direct {p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;-><init>()V

    iput-object p3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempLayoutStateWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;

    .line 593
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRangeLengths:Ljava/util/List;

    .line 720
    sget-object p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->DEFAULT_LAYOUT_HELPER:Lcom/alibaba/android/vlayout/LayoutHelper;

    iput-object p3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mDefaultLayoutHelper:Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 1083
    new-instance p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$3;

    invoke-direct {p3, p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$3;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;)V

    iput-object p3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mLayoutViewFatory:Lcom/alibaba/android/vlayout/LayoutViewFactory;

    .line 1363
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 1454
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasured:Z

    .line 1456
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mMeasuredFullSpace:I

    .line 1458
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasuring:Z

    .line 119
    invoke-static {p0, p2}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->createOrientationHelper(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;I)Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mOrientationHelper:Lcom/alibaba/android/vlayout/OrientationHelperEx;

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 120
    :goto_0
    invoke-static {p0, p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->createOrientationHelper(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;I)Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSecondaryOrientationHelper:Lcom/alibaba/android/vlayout/OrientationHelperEx;

    .line 121
    new-instance p1, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;

    invoke-direct {p1}, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->setHelperFinder(Lcom/alibaba/android/vlayout/LayoutHelperFinder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/vlayout/VirtualLayoutManager;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static enableDebugging(Z)V
    .locals 0

    .line 76
    sput-boolean p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->sDebuggable:Z

    return-void
.end method

.method private findRangeLength(Lcom/alibaba/android/vlayout/Range;)I
    .locals 7
    .param p1    # Lcom/alibaba/android/vlayout/Range;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/vlayout/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRangeLengths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    if-gt v2, v0, :cond_6

    add-int v3, v2, v0

    .line 607
    div-int/lit8 v3, v3, 0x2

    .line 608
    iget-object v5, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRangeLengths:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 610
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/alibaba/android/vlayout/Range;

    if-nez v6, :cond_2

    goto :goto_2

    .line 616
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/alibaba/android/vlayout/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/alibaba/android/vlayout/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1, v6}, Lcom/alibaba/android/vlayout/Range;->contains(Lcom/alibaba/android/vlayout/Range;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 618
    :cond_3
    invoke-virtual {v6}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_4

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    .line 620
    :cond_4
    invoke-virtual {v6}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_1

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    move-object v4, v5

    :cond_6
    :goto_2
    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    return v1
.end method

.method private measureChildWithDecorations(Landroid/view/View;II)V
    .locals 2

    .line 1366
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1367
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p2, v0, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 1368
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p3, v0, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->updateSpecWithExtra(III)I

    move-result p0

    .line 1369
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;II)V
    .locals 3

    .line 1373
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1374
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1376
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1377
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    invoke-direct {p0, p2, v1, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 1380
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    .line 1381
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p3, v0, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    .line 1384
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private runPostLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 10

    .line 412
    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNested:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNested:I

    .line 413
    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNested:I

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    .line 414
    iput v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNested:I

    .line 415
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 416
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->findLastVisibleItemPosition()I

    move-result v8

    .line 417
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/vlayout/LayoutHelper;

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move v5, v8

    move v6, p3

    move-object v7, p0

    .line 419
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/android/vlayout/LayoutHelper;->afterLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 421
    sget-boolean v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->sDebuggable:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    throw v1

    :cond_1
    return-void
.end method

.method private runPreLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 402
    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNested:I

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->reverse()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 404
    invoke-virtual {v1, p1, p2, p0}, Lcom/alibaba/android/vlayout/LayoutHelper;->beforeLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    goto :goto_0

    .line 408
    :cond_0
    iget p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNested:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNested:I

    return-void
.end method

.method private setDefaultLayoutHelper(Lcom/alibaba/android/vlayout/LayoutHelper;)V
    .locals 0
    .param p1    # Lcom/alibaba/android/vlayout/LayoutHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 732
    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mDefaultLayoutHelper:Lcom/alibaba/android/vlayout/LayoutHelper;

    return-void

    .line 730
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "layoutHelper should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateSpecWithExtra(III)I
    .locals 1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return p1

    .line 1399
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    .line 1401
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sub-int/2addr v0, p2

    sub-int/2addr v0, p3

    if-gez v0, :cond_3

    const/4 p1, 0x0

    .line 1403
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 1406
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    .line 1405
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addBackgroundView(Landroid/view/View;Z)V
    .locals 0

    .line 1155
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->showView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 1157
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addChildView(Landroid/view/View;I)V
    .locals 0

    .line 1116
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addChildView(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Landroid/view/View;)V
    .locals 2

    .line 1127
    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getItemDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->addChildView(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Landroid/view/View;I)V

    return-void
.end method

.method public addChildView(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Landroid/view/View;I)V
    .locals 0

    .line 1133
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->showView(Landroid/view/View;)V

    .line 1135
    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->hasScrapList()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1137
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 1139
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public addFixedView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1164
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->addOffFlowView(Landroid/view/View;Z)V

    return-void
.end method

.method public addOffFlowView(Landroid/view/View;Z)V
    .locals 0

    .line 1148
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->showView(Landroid/view/View;)V

    .line 1149
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->addHiddenView(Landroid/view/View;Z)V

    return-void
.end method

.method public bridge synthetic assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 1233
    invoke-super {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNoScrolling:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 1238
    invoke-super {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNoScrolling:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 797
    instance-of p0, p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    return p0
.end method

.method protected computeAlignOffset(IZZ)I
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->getLayoutHelper(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/LayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/alibaba/android/vlayout/LayoutHelper;->computeAlignOffset(IZZLcom/alibaba/android/vlayout/LayoutManagerHelper;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected computeAlignOffset(Landroid/view/View;ZZ)I
    .locals 0

    .line 368
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->computeAlignOffset(IZZ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 4

    .line 1312
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1315
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1316
    invoke-virtual {p0, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1317
    instance-of v2, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$CacheViewHolder;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$CacheViewHolder;

    invoke-interface {v2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$CacheViewHolder;->needCached()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 1319
    invoke-static {v1, v2, v3}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ViewHolderWrapper;->setFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1324
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 1341
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public detachAndScrapViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 3

    .line 1329
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1330
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 1331
    instance-of v1, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$CacheViewHolder;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$CacheViewHolder;

    invoke-interface {v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$CacheViewHolder;->needCached()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 1333
    invoke-static {v0, v1, v2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ViewHolderWrapper;->setFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    .line 1336
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->detachAndScrapViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public bridge synthetic findFirstVisibleItemPosition()I
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->findFirstVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public bridge synthetic findLastVisibleItemPosition()I
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->findLastVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public findLayoutHelperByPosition(I)Lcom/alibaba/android/vlayout/LayoutHelper;
    .locals 0

    .line 1440
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->getLayoutHelper(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object p0

    return-object p0
.end method

.method public findNeighbourNonfixLayoutHelper(Lcom/alibaba/android/vlayout/LayoutHelper;Z)Lcom/alibaba/android/vlayout/LayoutHelper;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 344
    :cond_0
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->getLayoutHelpers()Ljava/util/List;

    move-result-object p0

    .line 345
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    :goto_0
    if-ltz p1, :cond_5

    .line 350
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 351
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/android/vlayout/LayoutHelper;

    if-eqz p0, :cond_4

    .line 353
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/LayoutHelper;->isFixLayout()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    return-object p0

    :cond_4
    return-object v0

    :cond_5
    return-object v0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 3

    .line 1415
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1419
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1420
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1421
    invoke-virtual {p0, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 802
    new-instance p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 821
    new-instance p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$InflateLayoutParams;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$InflateLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 808
    instance-of p0, p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    if-eqz p0, :cond_0

    .line 809
    new-instance p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    check-cast p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object p0

    .line 810
    :cond_0
    instance-of p0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz p0, :cond_1

    .line 811
    new-instance p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object p0

    .line 812
    :cond_1
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_2

    .line 813
    new-instance p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 815
    :cond_2
    new-instance p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final generateLayoutView()Landroid/view/View;
    .locals 2

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mLayoutViewFatory:Lcom/alibaba/android/vlayout/LayoutViewFactory;

    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/alibaba/android/vlayout/LayoutViewFactory;->generateLayoutView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    .line 1106
    new-instance v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(II)V

    .line 1107
    new-instance v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutViewHolder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutViewHolder;-><init>(Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->attachViewHolder(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1109
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getChildMeasureSpec(IIZ)I
    .locals 0

    const/4 p0, 0x0

    .line 1227
    invoke-static {p1, p0, p2, p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result p0

    return p0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 1185
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentHeight()I
    .locals 0

    .line 1355
    invoke-super {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->getHeight()I

    move-result p0

    return p0
.end method

.method public getContentWidth()I
    .locals 0

    .line 1350
    invoke-super {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->getWidth()I

    move-result p0

    return p0
.end method

.method public getFixedViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1068
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1071
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1072
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 1073
    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/LayoutHelper;->getFixedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1075
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getLayoutHelpers()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/LayoutHelper;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->getLayoutHelpers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;
    .locals 0

    .line 1207
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mOrientationHelper:Lcom/alibaba/android/vlayout/OrientationHelperEx;

    return-object p0
.end method

.method public getOffsetToStart()I
    .locals 5

    .line 691
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 693
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 700
    :cond_1
    invoke-virtual {p0, v2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 701
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alibaba/android/vlayout/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/alibaba/android/vlayout/Range;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->findRangeLength(Lcom/alibaba/android/vlayout/Range;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 702
    iget-object v4, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRangeLengths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    goto :goto_1

    .line 706
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mOrientationHelper:Lcom/alibaba/android/vlayout/OrientationHelperEx;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    neg-int v1, v1

    :goto_0
    if-ge v0, v3, :cond_4

    .line 708
    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRangeLengths:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_3

    .line 710
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v1
.end method

.method public getOrientation()I
    .locals 0

    .line 270
    invoke-super {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->getOrientation()I

    move-result p0

    return p0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1179
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getSecondaryOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;
    .locals 0

    .line 1212
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSecondaryOrientationHelper:Lcom/alibaba/android/vlayout/OrientationHelperEx;

    return-object p0
.end method

.method public hideView(Landroid/view/View;)V
    .locals 0

    .line 1169
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->hideView(Landroid/view/View;)V

    return-void
.end method

.method public isDoLayoutRTL()Z
    .locals 0

    .line 1360
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->isLayoutRTL()Z

    move-result p0

    return p0
.end method

.method public isEnableMarginOverLap()Z
    .locals 0

    .line 260
    iget-boolean p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mEnableMarginOverlapping:Z

    return p0
.end method

.method public isViewHolderUpdated(Landroid/view/View;)Z
    .locals 0

    .line 1195
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1196
    invoke-static {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->isViewHolderUpdated(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

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

.method public layoutChild(Landroid/view/View;IIII)V
    .locals 0

    .line 1250
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    return-void
.end method

.method public layoutChildWithMargins(Landroid/view/View;IIII)V
    .locals 8

    .line 1243
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1244
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v4, p2, v1

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v5, p3, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v6, p4, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v7, p5, p2

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    return-void
.end method

.method protected layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;)V
    .locals 9

    .line 633
    iget v0, p3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mCurrentPosition:I

    .line 634
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempLayoutStateWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;

    invoke-static {v1, p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->access$102(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;)Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    .line 635
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->getLayoutHelper(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mDefaultLayoutHelper:Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 639
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempLayoutStateWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/android/vlayout/LayoutHelper;->doLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 642
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempLayoutStateWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;

    invoke-static {p1, v2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->access$102(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;)Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    .line 646
    iget p1, p3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mCurrentPosition:I

    if-ne p1, v0, :cond_2

    const-string p0, "VirtualLayoutManager"

    .line 647
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "layoutHelper["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] consumes no item!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 649
    iput-boolean p0, p4, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mFinished:Z

    goto :goto_2

    .line 652
    :cond_2
    iget p1, p3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mCurrentPosition:I

    iget p2, p3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mItemDirection:I

    sub-int/2addr p1, p2

    .line 653
    iget-boolean p2, p4, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    iget p2, p4, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    .line 656
    :goto_1
    new-instance p3, Lcom/alibaba/android/vlayout/Range;

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lcom/alibaba/android/vlayout/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 658
    invoke-direct {p0, p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->findRangeLength(Lcom/alibaba/android/vlayout/Range;)I

    move-result p1

    if-ltz p1, :cond_5

    .line 660
    iget-object p4, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRangeLengths:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/Pair;

    if-eqz p4, :cond_4

    .line 661
    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/vlayout/Range;

    invoke-virtual {v0, p3}, Lcom/alibaba/android/vlayout/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ne p4, p2, :cond_4

    return-void

    .line 664
    :cond_4
    iget-object p4, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRangeLengths:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 667
    :cond_5
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRangeLengths:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRangeLengths:Ljava/util/List;

    new-instance p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$2;

    invoke-direct {p2, p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$2;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 0

    .line 1217
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->measureChildWithDecorations(Landroid/view/View;II)V

    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 0

    .line 1222
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    return-void
.end method

.method public moveView(II)V
    .locals 0

    .line 1122
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->moveView(II)V

    return-void
.end method

.method public obtainExtraMargin(Landroid/view/View;Z)I
    .locals 1

    const/4 v0, 0x1

    .line 386
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->obtainExtraMargin(Landroid/view/View;ZZ)I

    move-result p0

    return p0
.end method

.method public obtainExtraMargin(Landroid/view/View;ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    .line 391
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->computeAlignOffset(Landroid/view/View;ZZ)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 2

    .line 576
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->offsetChildrenHorizontal(I)V

    .line 578
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 579
    invoke-virtual {v1, p1, p0}, Lcom/alibaba/android/vlayout/LayoutHelper;->onOffsetChildrenHorizontal(ILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 2

    .line 585
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->offsetChildrenVertical(I)V

    .line 586
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 587
    invoke-virtual {v1, p1, p0}, Lcom/alibaba/android/vlayout/LayoutHelper;->onOffsetChildrenVertical(ILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 826
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$AnchorInfo;)V
    .locals 3

    .line 310
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$AnchorInfo;)V

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 314
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempAnchorInfoWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;

    iget v2, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$AnchorInfo;->mPosition:I

    iput v2, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    .line 315
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempAnchorInfoWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;

    iget v2, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$AnchorInfo;->mCoordinate:I

    iput v2, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->coordinate:I

    .line 316
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempAnchorInfoWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;

    iget-boolean v2, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v2, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->layoutFromEnd:Z

    .line 317
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    iget v2, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$AnchorInfo;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->getLayoutHelper(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempAnchorInfoWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;

    invoke-virtual {v1, p1, v2, p0}, Lcom/alibaba/android/vlayout/LayoutHelper;->checkAnchorInfo(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempAnchorInfoWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;

    iget v1, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    iget v2, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$AnchorInfo;->mPosition:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempAnchorInfoWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;

    iget v1, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    iput v1, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$AnchorInfo;->mPosition:I

    .line 327
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempAnchorInfoWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;

    iget v1, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->coordinate:I

    iput v1, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$AnchorInfo;->mCoordinate:I

    .line 329
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempAnchorInfoWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;

    const/4 v2, -0x1

    iput v2, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempAnchorInfoWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;

    iget v1, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$AnchorInfo;->mPosition:I

    iput v1, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    .line 334
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempAnchorInfoWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;

    iget p2, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$AnchorInfo;->mCoordinate:I

    iput p2, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->coordinate:I

    .line 335
    iget-object p2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {p2}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 336
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mTempAnchorInfoWrapper:Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;

    invoke-virtual {v0, p1, v1, p0}, Lcom/alibaba/android/vlayout/LayoutHelper;->onRefreshLayout(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 832
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 833
    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 838
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 840
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 841
    invoke-virtual {p2, p0}, Lcom/alibaba/android/vlayout/LayoutHelper;->clear(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 844
    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 767
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 787
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 788
    invoke-virtual {v0, p0}, Lcom/alibaba/android/vlayout/LayoutHelper;->onItemsChanged(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 782
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 772
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 777
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 450
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const-string v0, "VLM onLayoutChildren"

    .line 451
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 454
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNoScrolling:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->didStructureChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iput-boolean v3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasured:Z

    .line 456
    iput-boolean v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasuring:Z

    .line 460
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->runPreLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const v0, 0x7fffffff

    .line 463
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->runPostLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 473
    iget-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNestedScrolling:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNoScrolling:Z

    if-eqz p1, :cond_5

    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasuring:Z

    if-eqz p1, :cond_5

    .line 475
    iput-boolean v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasured:Z

    .line 477
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v2

    .line 478
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 480
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 482
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    iget p2, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v2, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->computeAlignOffset(Landroid/view/View;ZZ)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mMeasuredFullSpace:I

    .line 484
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNestedScrolling:Z

    if-eqz p1, :cond_4

    .line 485
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 486
    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_4

    .line 488
    iget p2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mMeasuredFullSpace:I

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mMeasuredFullSpace:I

    goto :goto_0

    .line 492
    :cond_3
    iput-boolean v3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasuring:Z

    .line 494
    :cond_4
    :goto_0
    iput-boolean v3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasuring:Z

    .line 495
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getItemCount()I

    move-result p1

    if-lez p1, :cond_5

    .line 497
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$1;

    invoke-direct {p2, p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$1;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 508
    :cond_5
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v1, :cond_6

    .line 509
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_6
    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 465
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 466
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->runPostLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    throw v1
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 8

    .line 1463
    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNoScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNestedScrolling:Z

    if-nez v0, :cond_0

    .line 1465
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    return-void

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7ffffff

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNestedScrolling:Z

    if-eqz v0, :cond_2

    .line 1473
    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mMaxMeasureSize:I

    if-lez v0, :cond_1

    .line 1474
    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mMaxMeasureSize:I

    goto :goto_0

    .line 1476
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1477
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1478
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1483
    :goto_0
    iget-boolean v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasured:Z

    if-eqz v2, :cond_3

    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mMeasuredFullSpace:I

    .line 1485
    :cond_3
    iget-boolean v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNoScrolling:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    .line 1486
    iget-boolean v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasured:Z

    xor-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasuring:Z

    .line 1488
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getItemCount()I

    move-result v5

    if-eq v2, v5, :cond_4

    goto :goto_1

    .line 1502
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getItemCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 1504
    iput-boolean v4, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasured:Z

    .line 1505
    iput-boolean v3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasuring:Z

    move v0, v3

    goto :goto_2

    .line 1489
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1491
    iget v5, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mMeasuredFullSpace:I

    if-eqz v2, :cond_6

    .line 1493
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1494
    invoke-virtual {p0, v2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v6

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    invoke-virtual {p0, v2, v4, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->computeAlignOffset(Landroid/view/View;ZZ)I

    move-result v5

    add-int/2addr v5, v6

    .line 1497
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getItemCount()I

    move-result v7

    if-ne v6, v7, :cond_7

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mMeasuredFullSpace:I

    if-eq v5, v2, :cond_8

    .line 1499
    :cond_7
    iput-boolean v3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasured:Z

    .line 1500
    iput-boolean v4, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasuring:Z

    move v0, v1

    .line 1510
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getOrientation()I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v4, :cond_9

    .line 1511
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    goto :goto_3

    .line 1513
    :cond_9
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    :goto_3
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public onScrollStateChanged(I)V
    .locals 4

    .line 565
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onScrollStateChanged(I)V

    .line 567
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 568
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 569
    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {v2}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 570
    invoke-virtual {v3, p1, v0, v1, p0}, Lcom/alibaba/android/vlayout/LayoutHelper;->onScrollStateChanged(IIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 10

    if-ne p2, p3, :cond_0

    return-void

    .line 1260
    :cond_0
    sget-boolean v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->sDebuggable:Z

    if-eqz v0, :cond_1

    const-string v0, "VirtualLayoutManager"

    .line 1261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recycling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v2, p2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, -0x1

    if-le p3, p2, :cond_5

    add-int/lit8 v1, p3, -0x1

    .line 1266
    invoke-virtual {p0, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1267
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1269
    invoke-virtual {p0, v2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1270
    invoke-virtual {p0, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    move v9, p2

    :goto_0
    if-ge p2, p3, :cond_9

    .line 1275
    invoke-virtual {p0, v9}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1276
    invoke-virtual {p0, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_4

    .line 1278
    iget-object v3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->getLayoutHelper(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v8, 0x1

    move v5, v2

    move v6, v1

    move-object v7, p0

    .line 1279
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/android/vlayout/LayoutHelper;->isRecyclable(IIILcom/alibaba/android/vlayout/LayoutManagerHelper;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1280
    :cond_3
    :goto_1
    invoke-virtual {p0, v9, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_2

    .line 1285
    :cond_4
    invoke-virtual {p0, v9, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1289
    :cond_5
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    .line 1290
    invoke-virtual {p0, v2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1292
    invoke-virtual {p0, v2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1293
    invoke-virtual {p0, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_3
    if-le p2, p3, :cond_9

    .line 1296
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1297
    invoke-virtual {p0, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_7

    .line 1299
    iget-object v3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->getLayoutHelper(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v8, 0x0

    move v5, v2

    move v6, v1

    move-object v7, p0

    .line 1300
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/android/vlayout/LayoutHelper;->isRecyclable(IIILcom/alibaba/android/vlayout/LayoutManagerHelper;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1301
    :cond_6
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_4

    .line 1304
    :cond_7
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_8
    :goto_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_9
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 1

    .line 1432
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 1434
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public removeChildView(Landroid/view/View;)V
    .locals 0

    .line 1202
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public runAdjustLayout()V
    .locals 7

    .line 430
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 431
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->getLayoutHelper(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object v1

    .line 432
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 433
    iget-object v3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->getLayoutHelper(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object v3

    .line 434
    iget-object v4, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->getLayoutHelpers()Ljava/util/List;

    move-result-object v4

    .line 435
    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 436
    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    :goto_0
    if-gt v1, v3, :cond_1

    .line 439
    :try_start_0
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/vlayout/LayoutHelper;

    invoke-virtual {v5, v0, v2, p0}, Lcom/alibaba/android/vlayout/LayoutHelper;->adjustLayout(IILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 441
    sget-boolean v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->sDebuggable:Z

    if-nez v6, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_0
    throw v5

    :cond_1
    return-void
.end method

.method public bridge synthetic scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method protected scrollInternalBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    .line 519
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const-string v0, "VLM scroll"

    .line 520
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 523
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->runPreLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 v0, 0x0

    .line 527
    :try_start_0
    iget-boolean v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNoScrolling:Z

    if-nez v2, :cond_2

    .line 528
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->scrollInternalBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    :cond_1
    :goto_0
    move v0, p1

    goto :goto_2

    .line 530
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_6

    if-nez p1, :cond_3

    goto :goto_3

    .line 534
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mRecycle:Z

    .line 535
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->ensureLayoutStateExpose()V

    if-lez p1, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    .line 537
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 538
    invoke-virtual {p0, v2, v4, v3, p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->updateLayoutStateExpose(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 539
    iget-object v3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iget v3, v3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mScrollingOffset:I

    .line 541
    iget-object v5, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    invoke-virtual {p0, p2, v5, p3, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v3, v5

    if-gez v3, :cond_5

    .line 553
    invoke-direct {p0, p2, p3, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->runPostLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return v0

    :cond_5
    if-le v4, v3, :cond_1

    mul-int p1, v2, v3

    goto :goto_0

    :goto_2
    invoke-direct {p0, p2, p3, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->runPostLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    goto :goto_4

    :cond_6
    :goto_3
    invoke-direct {p0, p2, p3, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->runPostLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "VirtualLayoutManager"

    .line 548
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    sget-boolean v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->sDebuggable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_8

    goto :goto_2

    .line 556
    :goto_4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v1, :cond_7

    .line 557
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_7
    return v0

    .line 550
    :cond_8
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    :goto_5
    invoke-direct {p0, p2, p3, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->runPostLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    throw p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 737
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->scrollToPosition(I)V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 0

    .line 743
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public bridge synthetic scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public setEnableMarginOverlapping(Z)V
    .locals 0

    .line 252
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mEnableMarginOverlapping:Z

    return-void
.end method

.method public setFixOffset(IIII)V
    .locals 1

    .line 168
    new-instance v0, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;-><init>(IIII)V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mFixAreaAdjustor:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    return-void
.end method

.method public setHelperFinder(Lcom/alibaba/android/vlayout/LayoutHelperFinder;)V
    .locals 3
    .param p1    # Lcom/alibaba/android/vlayout/LayoutHelperFinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 150
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 153
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    .line 158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 159
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->setLayouts(Ljava/util/List;)V

    :cond_1
    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasured:Z

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->requestLayout()V

    return-void

    .line 147
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "finder is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLayoutHelpers(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/LayoutHelper;",
            ">;)V"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 187
    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->oldHelpersSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    move v1, v0

    move v2, v1

    .line 193
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 194
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 196
    instance-of v4, v3, Lcom/alibaba/android/vlayout/layout/FixAreaLayoutHelper;

    if-eqz v4, :cond_1

    .line 197
    move-object v4, v3

    check-cast v4, Lcom/alibaba/android/vlayout/layout/FixAreaLayoutHelper;

    iget-object v5, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mFixAreaAdjustor:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/vlayout/layout/FixAreaLayoutHelper;->setAdjuster(Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;)V

    .line 200
    :cond_1
    instance-of v4, v3, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mLayoutViewBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewBindListener;

    if-eqz v4, :cond_2

    .line 201
    move-object v4, v3

    check-cast v4, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;

    iget-object v5, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mLayoutViewBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewBindListener;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->setLayoutViewBindListener(Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewBindListener;)V

    .line 205
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/LayoutHelper;->getItemCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 206
    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/LayoutHelper;->getItemCount()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/android/vlayout/LayoutHelper;->setRange(II)V

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    .line 208
    invoke-virtual {v3, v4, v4}, Lcom/alibaba/android/vlayout/LayoutHelper;->setRange(II)V

    .line 211
    :goto_2
    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/LayoutHelper;->getItemCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->setLayouts(Ljava/util/List;)V

    .line 217
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mHelperFinder:Lcom/alibaba/android/vlayout/LayoutHelperFinder;

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 218
    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->newHelpersSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 222
    :cond_5
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->oldHelpersSet:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 223
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 225
    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->newHelpersSet:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 226
    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->newHelpersSet:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 232
    :cond_7
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->oldHelpersSet:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 233
    invoke-virtual {v1, p0}, Lcom/alibaba/android/vlayout/LayoutHelper;->clear(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    goto :goto_5

    .line 236
    :cond_8
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->oldHelpersSet:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->newHelpersSet:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 237
    :cond_9
    iput-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasured:Z

    .line 240
    :cond_a
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->oldHelpersSet:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 241
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->newHelpersSet:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 242
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->requestLayout()V

    return-void
.end method

.method public setLayoutViewFactory(Lcom/alibaba/android/vlayout/LayoutViewFactory;)V
    .locals 0
    .param p1    # Lcom/alibaba/android/vlayout/LayoutViewFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1098
    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mLayoutViewFatory:Lcom/alibaba/android/vlayout/LayoutViewFactory;

    return-void

    .line 1097
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "factory should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNestedScrolling(Z)V
    .locals 1

    const/4 v0, -0x1

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->setNestedScrolling(ZI)V

    return-void
.end method

.method public setNestedScrolling(ZI)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNestedScrolling:Z

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasured:Z

    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasuring:Z

    .line 139
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mMeasuredFullSpace:I

    return-void
.end method

.method public setNoScrolling(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mNoScrolling:Z

    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasured:Z

    .line 128
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mMeasuredFullSpace:I

    .line 129
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mSpaceMeasuring:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 275
    invoke-static {p0, p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->createOrientationHelper(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;I)Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mOrientationHelper:Lcom/alibaba/android/vlayout/OrientationHelperEx;

    .line 276
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->setOrientation(I)V

    return-void
.end method

.method public bridge synthetic setRecycleOffset(I)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->setRecycleOffset(I)V

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 289
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->setReverseLayout(Z)V

    return-void

    .line 285
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "VirtualLayoutManager does not support reverse layout in current version."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStackFromEnd(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 302
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->setStackFromEnd(Z)V

    return-void

    .line 299
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "VirtualLayoutManager does not support stack from end."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public showView(Landroid/view/View;)V
    .locals 0

    .line 1174
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->showView(Landroid/view/View;)V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 748
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 0

    .line 754
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->mCurrentPendingSavedState:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
