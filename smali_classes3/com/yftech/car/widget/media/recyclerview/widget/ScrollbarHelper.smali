.class Lcom/yftech/car/widget/media/recyclerview/widget/ScrollbarHelper;
.super Ljava/lang/Object;
.source "ScrollbarHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeScrollExtent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;Z)I
    .locals 1

    .line 64
    invoke-virtual {p4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 69
    invoke-virtual {p4, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p4, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 71
    :cond_1
    invoke-virtual {p1, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    .line 72
    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    .line 73
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static computeScrollOffset(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I
    .locals 4

    .line 33
    invoke-virtual {p4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {p4, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 38
    invoke-virtual {p4, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 37
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 39
    invoke-virtual {p4, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 40
    invoke-virtual {p4, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz p6, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, -0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-nez p5, :cond_2

    return p0

    .line 47
    :cond_2
    invoke-virtual {p1, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p5

    .line 48
    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p6

    sub-int/2addr p5, p6

    .line 47
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    .line 49
    invoke-virtual {p4, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p6

    .line 50
    invoke-virtual {p4, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p6, p3

    .line 49
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    int-to-float p4, p5

    int-to-float p3, p3

    div-float/2addr p4, p3

    int-to-float p0, p0

    mul-float/2addr p0, p4

    .line 53
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p3

    .line 54
    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p0, p1

    .line 53
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method static computeScrollRange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;Z)I
    .locals 1

    .line 83
    invoke-virtual {p4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    return p0

    .line 91
    :cond_1
    invoke-virtual {p1, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p5

    .line 92
    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p5, p1

    .line 93
    invoke-virtual {p4, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 94
    invoke-virtual {p4, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 93
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p2, p5

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 97
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
