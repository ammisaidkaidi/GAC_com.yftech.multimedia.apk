.class public Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;
.super Lcom/yftech/car/widget/media/recyclerview/widget/SnapHelper;
.source "PagerSnapHelper.java"


# static fields
.field private static final MAX_SCROLL_ON_FLING_DURATION:I = 0x64


# instance fields
.field private mHorizontalHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mVerticalHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private distanceToCenter(Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 200
    invoke-virtual {p2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    .line 201
    invoke-virtual {p2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    .line 202
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    sub-int/2addr p0, p1

    return p0
.end method

.method private findCenterView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 218
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 224
    :cond_0
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_2

    .line 228
    invoke-virtual {p1, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 229
    invoke-virtual {p2, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 230
    invoke-virtual {p2, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    .line 231
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_1

    move-object v0, v4

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getHorizontalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    .line 265
    :cond_0
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 267
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

.method private getOrientationHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 244
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object p0

    return-object p0

    .line 246
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVerticalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    .line 256
    :cond_0
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->createVerticalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 258
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

.method private isForwardFling(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .locals 1

    .line 147
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-lez p2, :cond_0

    move p1, v0

    :cond_0
    return p1

    :cond_1
    if-lez p3, :cond_2

    move p1, v0

    :cond_2
    return p1
.end method

.method private isReverseLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .locals 3

    .line 155
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p0

    .line 156
    instance-of v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 157
    check-cast p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    .line 159
    invoke-interface {p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 161
    iget p1, p0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-ltz p1, :cond_1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    cmpg-float p0, p0, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 4
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 51
    new-array v0, v0, [I

    .line 52
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object v1

    .line 53
    invoke-direct {p0, p2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    .line 59
    :goto_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 61
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object p1

    .line 60
    invoke-direct {p0, p2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;)I

    move-result p0

    aput p0, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0
.end method

.method protected createScroller(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 171
    instance-of p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_0
    new-instance p1, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper$1;

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper$1;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;Landroid/content/Context;)V

    return-object p1
.end method

.method public findSnapView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->findCenterView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->findCenterView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public findTargetSnapPosition(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 11

    .line 82
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->getOrientationHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    .line 99
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v4

    move-object v4, v7

    :goto_0
    if-ge v6, v5, :cond_5

    .line 101
    invoke-virtual {p1, v6}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_1

    .line 105
    :cond_2
    invoke-direct {p0, v9, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;)I

    move-result v10

    if-gtz v10, :cond_3

    if-le v10, v3, :cond_3

    move-object v4, v9

    move v3, v10

    :cond_3
    if-ltz v10, :cond_4

    if-ge v10, v8, :cond_4

    move-object v7, v9

    move v8, v10

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 120
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->isForwardFling(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;II)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz v7, :cond_6

    .line 122
    invoke-virtual {p1, v7}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_6
    if-nez p2, :cond_7

    if-eqz v4, :cond_7

    .line 124
    invoke-virtual {p1, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_7
    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    move-object v4, v7

    :goto_2
    if-nez v4, :cond_9

    return v1

    .line 135
    :cond_9
    invoke-virtual {p1, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p3

    .line 137
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->isReverseLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result p0

    if-ne p0, p2, :cond_a

    move p0, v1

    goto :goto_3

    :cond_a
    const/4 p0, 0x1

    :goto_3
    add-int/2addr p3, p0

    if-ltz p3, :cond_c

    if-lt p3, v0, :cond_b

    goto :goto_4

    :cond_b
    return p3

    :cond_c
    :goto_4
    return v1
.end method
