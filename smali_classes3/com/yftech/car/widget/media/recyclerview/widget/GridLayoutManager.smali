.class public Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;
.super Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;,
        Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mUsingSpansToEstimateScrollBarDimensions:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 56
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 58
    new-instance p1, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 60
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 86
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 56
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 58
    new-instance p1, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 60
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 99
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 58
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 74
    invoke-static {p1, p2, p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 75
    iget p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method private assignSpans(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;IZ)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    move p4, v0

    move v0, p3

    move p3, v1

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    move p4, v0

    :goto_0
    if-eq p3, v0, :cond_1

    .line 806
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, p3

    .line 807
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 808
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanSize(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I

    move-result v2

    iput v2, v3, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 809
    iput v1, v3, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 810
    iget v2, v3, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v1, v2

    add-int/2addr p3, p4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    .line 189
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 191
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 192
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 193
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    return-void
.end method

.method static calculateItemBorders([III)[I
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 325
    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_0

    array-length v1, p0

    sub-int/2addr v1, v0

    aget v1, p0, v1

    if-eq v1, p2, :cond_1

    :cond_0
    add-int/lit8 p0, p1, 0x1

    .line 327
    new-array p0, p0, [I

    :cond_1
    const/4 v1, 0x0

    .line 329
    aput v1, p0, v1

    .line 330
    div-int v2, p2, p1

    .line 331
    rem-int/2addr p2, p1

    move v3, v1

    :goto_0
    if-gt v0, p1, :cond_3

    add-int/2addr v1, p2

    if-lez v1, :cond_2

    sub-int v4, p1, v1

    if-ge v4, p2, :cond_2

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v1, p1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    add-int/2addr v3, v4

    .line 342
    aput v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private computeScrollOffsetWithSpanInfo(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 9

    .line 1324
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1327
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    .line 1329
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    .line 1330
    invoke-virtual {p0, v2, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    xor-int/lit8 v4, v0, 0x1

    .line 1331
    invoke-virtual {p0, v4, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    if-eqz v2, :cond_4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 1335
    :cond_1
    iget-object v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6, v7}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v5

    .line 1337
    iget-object v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    iget v8, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v6, v7, v8}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v6

    .line 1340
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1341
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1342
    iget-object v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v3

    iget v8, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v6, p1, v8}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result p1

    add-int/2addr p1, v3

    .line 1345
    iget-boolean v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_2

    sub-int/2addr p1, v5

    sub-int/2addr p1, v3

    .line 1346
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 1347
    :cond_2
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-nez v0, :cond_3

    return p1

    .line 1351
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1352
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1351
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1354
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 1355
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v5, v6}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v1

    .line 1356
    iget-object v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    iget v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v4, v6}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v4

    sub-int/2addr v4, v1

    add-int/2addr v4, v3

    int-to-float v0, v0

    int-to-float v1, v4

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 1361
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1362
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    add-float/2addr p1, p0

    .line 1361
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_4
    :goto_1
    return v1

    :cond_5
    :goto_2
    return v1
.end method

.method private computeScrollRangeWithSpanInfo(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    .line 1291
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1294
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    .line 1296
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v0

    .line 1297
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {p0, v3, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1302
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1303
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 1304
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v2

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 1303
    invoke-virtual {v0, p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result p0

    add-int/2addr p0, v2

    return p0

    .line 1308
    :cond_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1309
    invoke-virtual {v4, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v1, v4

    .line 1311
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 1312
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v4, v0, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v0

    .line 1313
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v4, v3, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v3

    .line 1315
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v2

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v4, p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result p0

    add-int/2addr p0, v2

    sub-int/2addr v3, v0

    add-int/2addr v3, v2

    int-to-float p1, v1

    int-to-float v0, v3

    div-float/2addr p1, v0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method private ensureAnchorIsInCorrectSpan(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 392
    :goto_0
    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanIndex(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I

    move-result v1

    if-eqz p4, :cond_1

    :goto_1
    if-lez v1, :cond_3

    .line 395
    iget p4, p3, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez p4, :cond_3

    .line 396
    iget p4, p3, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    sub-int/2addr p4, v0

    iput p4, p3, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 397
    iget p4, p3, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanIndex(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I

    move-result v1

    goto :goto_1

    .line 401
    :cond_1
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    sub-int/2addr p4, v0

    .line 402
    iget v0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    :goto_2
    if-ge v0, p4, :cond_2

    add-int/lit8 v2, v0, 0x1

    .line 405
    invoke-direct {p0, p1, p2, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanIndex(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_2

    .line 413
    :cond_2
    iput v0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    :cond_3
    return-void
.end method

.method private ensureViewSet()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_1

    .line 368
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I
    .locals 0

    .line 466
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    .line 467
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result p0

    return p0

    .line 469
    :cond_0
    invoke-virtual {p1, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const-string p0, "GridLayoutManager"

    .line 475
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 478
    :cond_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result p0

    return p0
.end method

.method private getSpanIndex(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I
    .locals 1

    .line 482
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    .line 483
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p0

    return p0

    .line 485
    :cond_0
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    .line 489
    :cond_1
    invoke-virtual {p1, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    const-string p0, "GridLayoutManager"

    .line 495
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 499
    :cond_2
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p0

    return p0
.end method

.method private getSpanSize(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I
    .locals 1

    .line 503
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    .line 504
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p0

    return p0

    .line 506
    :cond_0
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    .line 510
    :cond_1
    invoke-virtual {p1, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    const-string p0, "GridLayoutManager"

    .line 516
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 520
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p0

    return p0
.end method

.method private guessMeasurement(FI)V
    .locals 1

    .line 770
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 772
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 8

    .line 730
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 731
    iget-object v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 732
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 734
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    .line 738
    :try_start_0
    iget v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v4, v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v1, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    iget v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 746
    iget v4, v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 748
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getHeightMode()I

    move-result v3

    iget v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    goto :goto_0

    .line 751
    :cond_0
    iget v4, v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 753
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getWidthMode()I

    move-result v2

    iget v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    .line 756
    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    return-void

    :catch_0
    move-exception p0

    .line 740
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 1

    .line 777
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz p4, :cond_0

    .line 780
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    goto :goto_0

    .line 782
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    .line 785
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method private updateMeasurements()V
    .locals 2

    .line 280
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 285
    :goto_0
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 256
    instance-of p0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    return p0
.end method

.method collectPrefetchPositionsForLayoutState(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5

    .line 526
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 528
    :goto_0
    iget v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    .line 529
    iget v3, p2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 530
    iget v4, p2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 531
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 533
    iget v3, p2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v4, p2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollOffset(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1233
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_0

    .line 1234
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->computeScrollOffsetWithSpanInfo(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0

    .line 1236
    :cond_0
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollOffset(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1215
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_0

    .line 1216
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->computeScrollRangeWithSpanInfo(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0

    .line 1218
    :cond_0
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollRange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1242
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_0

    .line 1243
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->computeScrollOffsetWithSpanInfo(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0

    .line 1245
    :cond_0
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollOffset(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1224
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_0

    .line 1225
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->computeScrollRangeWithSpanInfo(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0

    .line 1227
    :cond_0
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollRange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method findReferenceChild(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;ZZ)Landroid/view/View;
    .locals 8

    .line 422
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result p3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    move v0, p3

    move p3, p4

    .line 430
    :goto_0
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    .line 432
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    .line 436
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 437
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    if-eq p3, v0, :cond_6

    .line 440
    invoke-virtual {p0, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 441
    invoke-virtual {p0, v6}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_5

    if-ge v7, p4, :cond_5

    .line 443
    invoke-direct {p0, p1, p2, v7}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanIndex(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    .line 447
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v7}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v5, :cond_5

    move-object v5, v6

    goto :goto_3

    .line 451
    :cond_2
    iget-object v7, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7, v6}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    if-ge v7, v3, :cond_4

    iget-object v7, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 452
    invoke-virtual {v7, v6}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    if-ge v7, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v6

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    move-object v4, v6

    :cond_5
    :goto_3
    add-int/2addr p3, v1

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move-object v4, v5

    :goto_4
    return-object v4
.end method

.method public generateDefaultLayoutParams()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 231
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v0, -0x1

    const/4 v1, -0x2

    if-nez p0, :cond_0

    .line 232
    new-instance p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object p0

    .line 235
    :cond_0
    new-instance p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 242
    new-instance p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 247
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    .line 248
    new-instance p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 250
    :cond_0
    new-instance p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getColumnCountForAccessibility(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 133
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return p0

    .line 136
    :cond_0
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 141
    :cond_1
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public getRowCountForAccessibility(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 119
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 120
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return p0

    .line 122
    :cond_0
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 127
    :cond_1
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method getSpaceForSpanRange(II)I
    .locals 2

    .line 348
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    aget p0, v1, p0

    sub-int/2addr v0, p0

    return v0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    aget p0, p0, p1

    sub-int/2addr p2, p0

    return p2
.end method

.method public getSpanCount()I
    .locals 0

    .line 821
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return p0
.end method

.method public getSpanSizeLookup()Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-object p0
.end method

.method public isUsingSpansToEstimateScrollbarDimensions()Z
    .locals 0

    .line 1287
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    return p0
.end method

.method layoutChunk(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    .line 541
    iget-object v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getModeInOther()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v5

    .line 543
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v10

    if-lez v10, :cond_1

    iget-object v10, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v11, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    aget v10, v10, v11

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    if-eqz v9, :cond_2

    .line 548
    invoke-direct/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 550
    :cond_2
    iget v11, v2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    if-ne v11, v8, :cond_3

    move v11, v8

    goto :goto_2

    :cond_3
    move v11, v5

    .line 553
    :goto_2
    iget v12, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-nez v11, :cond_4

    .line 555
    iget v12, v2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v0, v1, v12}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanIndex(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I

    move-result v12

    .line 556
    iget v13, v2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v0, v1, v13}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanSize(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I

    move-result v13

    add-int/2addr v12, v13

    :cond_4
    move v13, v12

    move v12, v5

    .line 559
    :goto_3
    iget v14, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ge v12, v14, :cond_8

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)Z

    move-result v14

    if-eqz v14, :cond_8

    if-lez v13, :cond_8

    .line 560
    iget v14, v2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 561
    invoke-direct {v6, v0, v1, v14}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanSize(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I

    move-result v15

    .line 562
    iget v4, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-gt v15, v4, :cond_7

    sub-int/2addr v13, v15

    if-gez v13, :cond_5

    goto :goto_4

    .line 571
    :cond_5
    invoke-virtual {v2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_4

    .line 575
    :cond_6
    iget-object v14, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v4, v14, v12

    add-int/lit8 v12, v12, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_3

    .line 563
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans but GridLayoutManager has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    if-nez v12, :cond_9

    .line 580
    iput-boolean v8, v7, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    :cond_9
    const/4 v4, 0x0

    .line 588
    invoke-direct {v6, v0, v1, v12, v11}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->assignSpans(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;IZ)V

    move v0, v5

    move v1, v0

    :goto_5
    if-ge v0, v12, :cond_f

    .line 590
    iget-object v13, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v13, v13, v0

    .line 591
    iget-object v14, v2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v14, :cond_b

    if-eqz v11, :cond_a

    .line 593
    invoke-virtual {v6, v13}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 595
    :cond_a
    invoke-virtual {v6, v13, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_6

    :cond_b
    if-eqz v11, :cond_c

    .line 599
    invoke-virtual {v6, v13}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_6

    .line 601
    :cond_c
    invoke-virtual {v6, v13, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 604
    :goto_6
    iget-object v14, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v13, v14}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 606
    invoke-direct {v6, v13, v3, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 607
    iget-object v14, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v14, v13}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v14

    if-le v14, v1, :cond_d

    move v1, v14

    .line 611
    :cond_d
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    const/high16 v15, 0x3f800000    # 1.0f

    .line 612
    iget-object v5, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, v13}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    iget v13, v14, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v13, v13

    div-float/2addr v5, v13

    cmpl-float v13, v5, v4

    if-lez v13, :cond_e

    move v4, v5

    :cond_e
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x0

    goto :goto_5

    :cond_f
    if-eqz v9, :cond_11

    .line 620
    invoke-direct {v6, v4, v10}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->guessMeasurement(FI)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    if-ge v0, v12, :cond_11

    .line 624
    iget-object v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v3, v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    .line 625
    invoke-direct {v6, v3, v4, v8}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 626
    iget-object v4, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    if-le v3, v1, :cond_10

    move v1, v3

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v12, :cond_14

    .line 636
    iget-object v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v3, v3, v0

    .line 637
    iget-object v4, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    if-eq v4, v1, :cond_13

    .line 638
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 639
    iget-object v5, v4, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 640
    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v4, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v4, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    .line 642
    iget v10, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v5

    iget v5, v4, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v10, v5

    iget v5, v4, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v10, v5

    .line 644
    iget v5, v4, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v11, v4, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {v6, v5, v11}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v5

    .line 647
    iget v11, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-ne v11, v8, :cond_12

    .line 648
    iget v4, v4, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v11, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v5, v13, v10, v4, v11}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v4

    sub-int v5, v1, v9

    .line 650
    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_9

    :cond_12
    const/4 v11, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    sub-int v10, v1, v10

    .line 653
    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 655
    iget v4, v4, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v5, v13, v9, v4, v11}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v5

    move v4, v10

    .line 658
    :goto_9
    invoke-direct {v6, v3, v4, v5, v8}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_a

    :cond_13
    const/4 v11, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    const/4 v11, 0x0

    .line 662
    iput v1, v7, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 665
    iget v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, -0x1

    if-ne v0, v8, :cond_16

    .line 666
    iget v0, v2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v3, :cond_15

    .line 667
    iget v5, v2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v0, v5, v1

    move v1, v0

    move v2, v5

    :goto_b
    move v0, v11

    move v5, v0

    goto :goto_c

    .line 670
    :cond_15
    iget v5, v2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int v0, v5, v1

    move v2, v0

    move v1, v5

    goto :goto_b

    .line 674
    :cond_16
    iget v0, v2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v3, :cond_17

    .line 675
    iget v5, v2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v0, v5, v1

    move v1, v11

    move v2, v1

    goto :goto_c

    .line 678
    :cond_17
    iget v5, v2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int v0, v5, v1

    move v1, v11

    move v2, v1

    move/from16 v17, v5

    move v5, v0

    move/from16 v0, v17

    :goto_c
    if-ge v11, v12, :cond_1d

    .line 683
    iget-object v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v9, v3, v11

    .line 684
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 685
    iget v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-ne v3, v8, :cond_1a

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v4, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    iget v5, v10, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int/2addr v4, v5

    aget v3, v3, v4

    add-int/2addr v0, v3

    .line 688
    iget-object v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v9}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    sub-int v3, v0, v3

    move v15, v0

    move v14, v1

    move/from16 v16, v2

    move v13, v3

    goto :goto_d

    .line 690
    :cond_18
    iget v0, v10, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget-object v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v3, v3

    if-ge v0, v3, :cond_19

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v4, v10, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v3, v3, v4

    add-int/2addr v0, v3

    .line 692
    iget-object v3, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v9}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v0

    move v13, v0

    move v14, v1

    move/from16 v16, v2

    move v15, v3

    goto :goto_d

    :cond_19
    const-string v0, "GridLayoutManager"

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutChunk: params.mSpanIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= mCachedBorders.length=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 699
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v3, v10, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 700
    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v9}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    move v13, v0

    move v14, v1

    move/from16 v16, v2

    move v15, v5

    :goto_d
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    .line 704
    invoke-virtual/range {v0 .. v5}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 712
    invoke-virtual {v10}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v10}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 713
    :cond_1b
    iput-boolean v8, v7, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 715
    :cond_1c
    iget-boolean v0, v7, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, v7, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    add-int/lit8 v11, v11, 0x1

    move v0, v13

    move v1, v14

    move v5, v15

    move/from16 v2, v16

    goto/16 :goto_c

    .line 717
    :cond_1d
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method onAnchorReady(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 1

    .line 358
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 359
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 360
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 1088
    invoke-virtual/range {p0 .. p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 1092
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 1093
    iget v6, v5, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1094
    iget v7, v5, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v5, v5, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v7, v5

    .line 1095
    invoke-super/range {p0 .. p4}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    move/from16 v5, p2

    .line 1101
    invoke-virtual {v0, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_2

    move v5, v9

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 1102
    :goto_0
    iget-boolean v10, v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mShouldReverseLayout:Z

    if-eq v5, v10, :cond_3

    move v5, v9

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/4 v10, -0x1

    if-eqz v5, :cond_4

    .line 1105
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v9

    move v11, v10

    move v12, v11

    goto :goto_2

    .line 1111
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    move v11, v5

    move v12, v9

    const/4 v5, 0x0

    .line 1113
    :goto_2
    iget v13, v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-ne v13, v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v9

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 1137
    :goto_3
    invoke-direct {v0, v1, v2, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I

    move-result v14

    move v8, v10

    move/from16 v18, v8

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v10, v4

    :goto_4
    if-eq v5, v11, :cond_18

    .line 1139
    invoke-direct {v0, v1, v2, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I

    move-result v9

    .line 1140
    invoke-virtual {v0, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_6

    goto/16 :goto_c

    .line 1145
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v20

    if-eqz v20, :cond_8

    if-eq v9, v14, :cond_8

    if-eqz v4, :cond_7

    goto/16 :goto_c

    :cond_7
    move-object/from16 v21, v3

    move/from16 v23, v8

    move-object/from16 v24, v10

    move/from16 v22, v11

    move/from16 v8, v17

    move/from16 v11, v18

    goto/16 :goto_a

    .line 1156
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 1157
    iget v2, v9, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move-object/from16 v21, v3

    .line 1158
    iget v3, v9, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v22, v11

    iget v11, v9, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v3, v11

    .line 1159
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-eqz v11, :cond_9

    if-ne v2, v6, :cond_9

    if-ne v3, v7, :cond_9

    return-object v1

    .line 1164
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v4, :cond_b

    .line 1165
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-nez v11, :cond_c

    if-nez v10, :cond_c

    :cond_b
    :goto_5
    move/from16 v23, v8

    move-object/from16 v24, v10

    move/from16 v8, v17

    :goto_6
    move/from16 v11, v18

    :goto_7
    const/16 v19, 0x1

    goto :goto_9

    .line 1168
    :cond_c
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1169
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v20

    sub-int v11, v20, v11

    .line 1171
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v20

    if-eqz v20, :cond_f

    if-le v11, v15, :cond_d

    goto :goto_5

    :cond_d
    if-ne v11, v15, :cond_12

    if-le v2, v8, :cond_e

    const/4 v11, 0x1

    goto :goto_8

    :cond_e
    const/4 v11, 0x0

    :goto_8
    if-ne v13, v11, :cond_12

    goto :goto_5

    :cond_f
    if-nez v4, :cond_12

    move/from16 v23, v8

    move-object/from16 v24, v10

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 1180
    invoke-virtual {v0, v1, v10, v8}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v16

    if-eqz v16, :cond_13

    move/from16 v8, v17

    if-le v11, v8, :cond_10

    goto :goto_6

    :cond_10
    if-ne v11, v8, :cond_14

    move/from16 v11, v18

    if-le v2, v11, :cond_11

    const/4 v10, 0x1

    :cond_11
    if-ne v13, v10, :cond_15

    goto :goto_7

    :cond_12
    move/from16 v23, v8

    move-object/from16 v24, v10

    :cond_13
    move/from16 v8, v17

    :cond_14
    move/from16 v11, v18

    :cond_15
    const/16 v19, 0x0

    :goto_9
    if-eqz v19, :cond_17

    .line 1192
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1194
    iget v4, v9, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1195
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1196
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    move v15, v3

    move/from16 v17, v8

    move/from16 v18, v11

    move-object/from16 v10, v24

    move v8, v4

    move-object v4, v1

    goto :goto_b

    .line 1199
    :cond_16
    iget v8, v9, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1200
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1201
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    move-object v10, v1

    move/from16 v17, v3

    move/from16 v18, v8

    move/from16 v8, v23

    goto :goto_b

    :cond_17
    :goto_a
    move/from16 v17, v8

    move/from16 v18, v11

    move/from16 v8, v23

    move-object/from16 v10, v24

    :goto_b
    add-int/2addr v5, v12

    move-object/from16 v3, v21

    move/from16 v11, v22

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_18
    :goto_c
    move-object/from16 v24, v10

    if-eqz v4, :cond_19

    goto :goto_d

    :cond_19
    move-object/from16 v4, v24

    :goto_d
    return-object v4
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    .line 147
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 148
    instance-of v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    .line 149
    invoke-super {p0, p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void

    .line 152
    :cond_0
    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 153
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)I

    move-result p1

    .line 154
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-nez p0, :cond_1

    .line 156
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v1

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    .line 155
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 161
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    .line 159
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onItemsAdded(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 200
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 201
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    return-void
.end method

.method public onItemsChanged(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 207
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    return-void
.end method

.method public onItemsMoved(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 226
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    return-void
.end method

.method public onItemsRemoved(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 213
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    return-void
.end method

.method public onItemsUpdated(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 219
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 220
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    return-void
.end method

.method public onLayoutChildren(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 167
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 170
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V

    .line 174
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    return-void
.end method

.method public onLayoutCompleted(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 375
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 376
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 377
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public scrollVerticallyBy(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 383
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 384
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 385
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_0

    .line 291
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 295
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 296
    iget v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    .line 298
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v1

    invoke-static {p3, p1, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result p1

    .line 299
    iget-object p3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v1, v1

    sub-int/2addr v1, v3

    aget p3, p3, v1

    add-int/2addr p3, v0

    .line 300
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v0

    .line 299
    invoke-static {p2, p3, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result p2

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    .line 303
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result p2

    .line 304
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v0, v0

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v1

    .line 305
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v0

    .line 304
    invoke-static {p3, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result p1

    .line 307
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSpanCount(I)V
    .locals 2

    .line 834
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 837
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-lt p1, v0, :cond_1

    .line 842
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 843
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 844
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->requestLayout()V

    return-void

    .line 839
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Span count should be at least 1. Provided "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSpanSizeLookup(Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUsingSpansToEstimateScrollbarDimensions(Z)V
    .locals 0

    .line 1275
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPendingSavedState:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
