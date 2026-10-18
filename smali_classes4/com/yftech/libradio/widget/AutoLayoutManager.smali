.class public Lcom/yftech/libradio/widget/AutoLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "AutoLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/widget/AutoLayoutManager$ItemLine;
    }
.end annotation


# instance fields
.field private allItemframs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private allLines:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yftech/libradio/widget/AutoLayoutManager$ItemLine;",
            ">;"
        }
    .end annotation
.end field

.field private totalHeight:I

.field private verticalScrollOffset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->totalHeight:I

    .line 17
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->allItemframs:Landroid/util/SparseArray;

    .line 18
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->allLines:Landroid/util/SparseArray;

    .line 25
    iput v0, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->verticalScrollOffset:I

    return-void
.end method

.method private recyclerViewFillView(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    .line 129
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/widget/AutoLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 130
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->verticalScrollOffset:I

    invoke-virtual {p0}, Lcom/yftech/libradio/widget/AutoLayoutManager;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->verticalScrollOffset:I

    invoke-virtual {p0}, Lcom/yftech/libradio/widget/AutoLayoutManager;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {p2, v3, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move v0, v3

    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/AutoLayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 134
    invoke-virtual {p0, v0}, Lcom/yftech/libradio/widget/AutoLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->allItemframs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 136
    invoke-static {p2, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    invoke-virtual {p0, v1, p1}, Lcom/yftech/libradio/widget/AutoLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 142
    :goto_1
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/AutoLayoutManager;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 143
    iget-object v1, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->allItemframs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {p2, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    .line 146
    invoke-virtual {p0, v5, v3, v3}, Lcom/yftech/libradio/widget/AutoLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 147
    invoke-virtual {p0, v5}, Lcom/yftech/libradio/widget/AutoLayoutManager;->addView(Landroid/view/View;)V

    .line 148
    iget-object v1, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->allItemframs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 149
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->verticalScrollOffset:I

    sub-int v7, v2, v4

    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->verticalScrollOffset:I

    sub-int v9, v1, v2

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/yftech/libradio/widget/AutoLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 29
    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    .line 35
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/AutoLayoutManager;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 43
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/widget/AutoLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 49
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/AutoLayoutManager;->getItemCount()I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 50
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v3

    .line 52
    invoke-virtual {p0, v3}, Lcom/yftech/libradio/widget/AutoLayoutManager;->addView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0, v3, v0, v0}, Lcom/yftech/libradio/widget/AutoLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 56
    invoke-virtual {p0, v3}, Lcom/yftech/libradio/widget/AutoLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v6

    .line 57
    invoke-virtual {p0, v3}, Lcom/yftech/libradio/widget/AutoLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    .line 59
    iget-object v7, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->allItemframs:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    if-nez v7, :cond_2

    .line 61
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    :cond_2
    if-nez v1, :cond_3

    .line 65
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v9, Lcom/yftech/libradio/widget/AutoLayoutManager$ItemLine;

    invoke-direct {v9, p0, v4, v8}, Lcom/yftech/libradio/widget/AutoLayoutManager$ItemLine;-><init>(Lcom/yftech/libradio/widget/AutoLayoutManager;ILjava/util/List;)V

    .line 67
    iget-object v8, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->allLines:Landroid/util/SparseArray;

    invoke-virtual {v8, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int v8, v5, v6

    .line 71
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/AutoLayoutManager;->getWidth()I

    move-result v9

    if-le v8, v9, :cond_6

    if-lez v1, :cond_5

    .line 74
    iget-object v5, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->allItemframs:Landroid/util/SparseArray;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    if-eqz v5, :cond_4

    .line 76
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v2, v8

    goto :goto_1

    :cond_4
    add-int/2addr v2, v3

    goto :goto_1

    :cond_5
    add-int/2addr v2, v3

    :goto_1
    add-int v5, v2, v3

    .line 84
    invoke-virtual {v7, v0, v2, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 85
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v8, Lcom/yftech/libradio/widget/AutoLayoutManager$ItemLine;

    invoke-direct {v8, p0, v4, v5}, Lcom/yftech/libradio/widget/AutoLayoutManager$ItemLine;-><init>(Lcom/yftech/libradio/widget/AutoLayoutManager;ILjava/util/List;)V

    .line 88
    iget-object v5, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->allLines:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_2

    :cond_6
    add-int v6, v2, v3

    .line 92
    invoke-virtual {v7, v5, v2, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    iget-object v5, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->allLines:Landroid/util/SparseArray;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/libradio/widget/AutoLayoutManager$ItemLine;

    .line 95
    invoke-static {v5}, Lcom/yftech/libradio/widget/AutoLayoutManager$ItemLine;->access$000(Lcom/yftech/libradio/widget/AutoLayoutManager$ItemLine;)Ljava/util/List;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v8

    .line 98
    :goto_2
    iget-object v6, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->allItemframs:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    add-int/2addr v2, v3

    .line 100
    iput v2, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->totalHeight:I

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/yftech/libradio/widget/AutoLayoutManager;->recyclerViewFillView(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 157
    invoke-virtual {p0, p2}, Lcom/yftech/libradio/widget/AutoLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 162
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/AutoLayoutManager;->getHeight()I

    move-result v0

    .line 163
    iget v1, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->totalHeight:I

    if-le v1, v0, :cond_0

    iget v1, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->totalHeight:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 164
    :goto_0
    iget v0, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->verticalScrollOffset:I

    add-int/2addr v0, p1

    if-gez v0, :cond_1

    .line 165
    iget p1, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->verticalScrollOffset:I

    neg-int p1, p1

    goto :goto_1

    .line 166
    :cond_1
    iget v0, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->verticalScrollOffset:I

    add-int/2addr v0, p1

    if-le v0, v1, :cond_2

    .line 168
    iget p1, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->verticalScrollOffset:I

    sub-int p1, v1, p1

    .line 172
    :cond_2
    :goto_1
    iget v0, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->verticalScrollOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yftech/libradio/widget/AutoLayoutManager;->verticalScrollOffset:I

    .line 175
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/widget/AutoLayoutManager;->offsetChildrenVertical(I)V

    .line 176
    invoke-direct {p0, p2, p3}, Lcom/yftech/libradio/widget/AutoLayoutManager;->recyclerViewFillView(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return p1
.end method
