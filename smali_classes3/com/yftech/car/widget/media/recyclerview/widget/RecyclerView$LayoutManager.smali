.class public abstract Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$Properties;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    }
.end annotation


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

.field private mHeight:I

.field private mHeightMode:I

.field mHorizontalBoundCheck:Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck;

.field private final mHorizontalBoundCheckCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck$Callback;

.field mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mVerticalBoundCheck:Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck;

.field private final mVerticalBoundCheckCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck$Callback;

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7917
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$1;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheckCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 7953
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$2;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheckCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 7994
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheckCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-direct {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck$Callback;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck;

    .line 7995
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheckCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-direct {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck$Callback;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck;

    const/4 v0, 0x0

    .line 8000
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 8002
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 8008
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    const/4 v0, 0x1

    .line 8014
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 8016
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 4

    .line 8881
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez p3, :cond_1

    .line 8882
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 8891
    :cond_0
    iget-object p3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {p3, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 8884
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {p3, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->addToDisappearedInLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8893
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 8894
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 8904
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-ne v1, v3, :cond_5

    .line 8906
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 8908
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result p2

    :cond_3
    if-eq v1, v3, :cond_4

    if-eq v1, p2, :cond_8

    .line 8916
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->moveView(II)V

    goto :goto_4

    .line 8911
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 8913
    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8919
    :cond_5
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, p1, p2, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    const/4 p2, 0x1

    .line 8920
    iput-boolean p2, p3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8921
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 8922
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_4

    .line 8895
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8896
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_3

    .line 8898
    :cond_7
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 8900
    :goto_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8925
    :cond_8
    :goto_4
    iget-boolean p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz p0, :cond_9

    .line 8929
    iget-object p0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8930
    iput-boolean v2, p3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    :cond_9
    return-void
.end method

.method public static chooseSize(III)I
    .locals 2

    .line 8202
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8203
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 8211
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    return p0

    .line 8208
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9107
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->detachViewFromParent(I)V

    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .locals 4

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    .line 9758
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_3

    if-ltz p3, :cond_0

    :goto_0
    move p0, p3

    move p2, v3

    goto :goto_2

    :cond_0
    if-ne p3, v1, :cond_7

    if-eq p1, v2, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_2

    :cond_1
    move p1, p2

    move p3, p1

    goto :goto_1

    :cond_2
    move p3, p0

    :goto_1
    move p2, p1

    move p0, p3

    goto :goto_2

    :cond_3
    if-ltz p3, :cond_4

    goto :goto_0

    :cond_4
    if-ne p3, v1, :cond_5

    move p2, p1

    goto :goto_2

    :cond_5
    if-ne p3, v0, :cond_7

    if-eq p1, v2, :cond_6

    if-ne p1, v3, :cond_8

    :cond_6
    move p2, v2

    goto :goto_2

    :cond_7
    move p0, p2

    .line 9799
    :cond_8
    :goto_2
    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    .line 9716
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p3, :cond_1

    if-ltz p2, :cond_0

    :goto_0
    move p0, p2

    :goto_1
    move p1, v0

    goto :goto_2

    :cond_0
    move p0, p1

    goto :goto_2

    :cond_1
    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, -0x2

    if-ne p2, p3, :cond_0

    const/high16 p1, -0x80000000

    .line 9742
    :goto_2
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private getChildRectangleOnScreenScrollAmount(Landroid/view/View;Landroid/graphics/Rect;)[I
    .locals 8

    const/4 v0, 0x2

    .line 10143
    new-array v0, v0, [I

    .line 10144
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    .line 10145
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    .line 10146
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 10147
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 10148
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    .line 10149
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v6, p1

    .line 10150
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v5

    .line 10151
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, v6

    sub-int/2addr v5, v1

    const/4 v1, 0x0

    .line 10153
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v6, v2

    .line 10154
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p1, v3

    .line 10155
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr p2, v4

    .line 10156
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 10162
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p0

    const/4 v4, 0x1

    if-ne p0, v4, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    .line 10164
    :cond_0
    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    :goto_0
    move v3, v7

    goto :goto_1

    .line 10167
    :cond_2
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    .line 10173
    :cond_3
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    aput v3, v0, v1

    aput v2, v0, v4

    return-object v0
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$Properties;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10922
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    .line 10923
    sget-object v1, Lcom/yftech/car/widget/media/R$styleable;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 10925
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RecyclerView_android_orientation:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    .line 10927
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RecyclerView_spanCount:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    .line 10928
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RecyclerView_reverseLayout:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    .line 10929
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RecyclerView_stackFromEnd:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    .line 10930
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private isFocusedChildVisibleAfterScrolling(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)Z
    .locals 6

    .line 10282
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 10286
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    .line 10287
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    .line 10288
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 10289
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 10290
    iget-object v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 10291
    invoke-virtual {p0, p1, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10293
    iget p0, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p2

    if-ge p0, v3, :cond_2

    iget p0, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p2

    if-le p0, v1, :cond_2

    iget p0, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p3

    if-ge p0, v4, :cond_2

    iget p0, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p3

    if-gt p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 3

    .line 9654
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 9655
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private scrapOrRecycleView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .locals 2

    .line 9515
    invoke-static {p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 9516
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 9522
    :cond_0
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    .line 9523
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9524
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 9525
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 9527
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 9528
    invoke-virtual {p1, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 9529
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->onViewDetached(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 8836
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 8854
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 8865
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 8877
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 8187
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8188
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 8223
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8224
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 9152
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9141
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-void
.end method

.method public attachView(Landroid/view/View;ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9120
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 9121
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9122
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->addToDisappearedInLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 9124
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 9126
    :goto_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10015
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 10016
    invoke-virtual {p2, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 10019
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    .line 10020
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canScrollVertically()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkLayoutParams(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public collectAdjacentPrefetchPositions(IILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    return-void
.end method

.method public collectInitialPrefetchPositions(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    return-void
.end method

.method public computeHorizontalScrollExtent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public computeHorizontalScrollOffset(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public computeHorizontalScrollRange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public computeVerticalScrollExtent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public computeVerticalScrollOffset(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public computeVerticalScrollRange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public detachAndScrapAttachedViews(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 2
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9507
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 9509
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9510
    invoke-direct {p0, p1, v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9191
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 9192
    invoke-direct {p0, p2, v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    return-void
.end method

.method public detachAndScrapViewAt(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9205
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9206
    invoke-direct {p0, p2, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9078
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 9080
    invoke-direct {p0, v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 1

    .line 9100
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    return-void
.end method

.method dispatchAttachedToWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x1

    .line 8434
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 8435
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method dispatchDetachedFromWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    const/4 v0, 0x0

    .line 8439
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 8440
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .locals 1

    .line 8817
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 8818
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 9019
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 9022
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 9026
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 9047
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 9049
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9050
    invoke-static {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 9054
    :cond_0
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    .line 9055
    invoke-virtual {v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract generateDefaultLayoutParams()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 8687
    new-instance p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 8663
    instance-of p0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz p0, :cond_0

    .line 8664
    new-instance p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    check-cast p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object p0

    .line 8665
    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    .line 8666
    new-instance p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 8668
    :cond_1
    new-instance p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getBaseline()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10050
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 9250
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getChildCount()I
    .locals 1

    .line 9239
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getClipToPadding()Z
    .locals 1

    .line 8546
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getColumnCountForAccessibility(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, -0x1

    return p0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9994
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
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

    .line 9946
    invoke-static {p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9958
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9824
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9825
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    return p1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9811
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9812
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    return p1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9982
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9970
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 9404
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 9407
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9408
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getHeight()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 9314
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    return p0
.end method

.method public getHeightMode()I
    .locals 0

    .line 9282
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    return p0
.end method

.method public getItemCount()I
    .locals 1

    .line 9427
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 9428
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getItemViewType(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9001
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    return p0
.end method

.method public getLayoutDirection()I
    .locals 0

    .line 8807
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10065
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getMinimumHeight()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 10573
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getMinimumWidth()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 10565
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getPaddingBottom()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 9354
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPaddingEnd()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 9374
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPaddingLeft()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 9324
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPaddingRight()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 9344
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPaddingStart()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 9364
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPaddingTop()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 9334
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8991
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p0

    return p0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10080
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public getRowCountForAccessibility(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, -0x1

    return p0
.end method

.method public getSelectionModeForAccessibility(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10035
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 9914
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p2, p2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9915
    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 9916
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p2

    .line 9915
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 9918
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9921
    :goto_0
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    .line 9922
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 9923
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9924
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 9925
    invoke-virtual {p0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9926
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 9927
    iget p2, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, p2

    .line 9928
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p2, v0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    .line 9929
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    .line 9930
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, p0

    .line 9931
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    .line 9927
    invoke-virtual {p3, p2, v0, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9935
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public getWidth()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 9298
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    return p0
.end method

.method public getWidthMode()I
    .locals 0

    .line 9266
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    return p0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .locals 5

    .line 10956
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 10958
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 10959
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 10960
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hasFocus()Z
    .locals 1

    .line 9394
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9472
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9478
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/16 v0, 0x80

    .line 9479
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 9480
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->removeViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void

    .line 9475
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View should be fully attached to be ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 9476
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAttachedToWindow()Z
    .locals 0

    .line 8451
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return p0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 0

    .line 8314
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    return p0
.end method

.method public isFocused()Z
    .locals 1

    .line 9384
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isItemPrefetchEnabled()Z
    .locals 0

    .line 8379
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return p0
.end method

.method public isLayoutHierarchical(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)Z
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public isMeasurementCacheEnabled()Z
    .locals 0

    .line 9639
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return p0
.end method

.method public isSmoothScrolling()Z
    .locals 1

    .line 8795
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isViewPartiallyVisible(Landroid/view/View;ZZ)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10261
    iget-object p3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck;

    const/16 v0, 0x6003

    invoke-virtual {p3, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;I)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck;

    .line 10263
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    return p0

    :cond_1
    xor-int/2addr p0, v1

    return p0
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9858
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9859
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9893
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 9894
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9895
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v1

    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v1

    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v1

    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr p5, p0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9585
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 9587
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 9588
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 9589
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    .line 9590
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v2

    .line 9591
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget p2, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    .line 9592
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    .line 9590
    invoke-static {v1, v2, v3, p2, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 9593
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v2

    .line 9594
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget p3, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 9595
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    .line 9593
    invoke-static {v1, v2, v3, p3, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p3

    .line 9596
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 9597
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9683
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 9685
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 9686
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 9687
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    .line 9689
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v2

    .line 9690
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget p2, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    .line 9692
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    .line 9689
    invoke-static {v1, v2, v3, p2, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 9693
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v2

    .line 9694
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget p3, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 9696
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    .line 9693
    invoke-static {v1, v2, v3, p3, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p3

    .line 9697
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 9698
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public moveView(II)V
    .locals 2

    .line 9172
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9177
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 9178
    invoke-virtual {p0, v0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    return-void

    .line 9174
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot move a child from non-existing index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 9175
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 9438
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 9439
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 9450
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 9451
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->offsetChildrenVertical(I)V

    :cond_0
    return-void
.end method

.method public onAdapterChanged(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onAddFocusables(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method public onDetachedFromWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDetachedFromWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 8537
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10697
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10713
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 10716
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    .line 10717
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 10718
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 10719
    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 10716
    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 10721
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_3

    .line 10722
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 10648
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10678
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    .line 10679
    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 10680
    invoke-virtual {p3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 10682
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    .line 10683
    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 10684
    invoke-virtual {p3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 10688
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    .line 10689
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    .line 10690
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)Z

    move-result v2

    .line 10691
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    .line 10688
    invoke-static {v0, v1, v2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p0

    .line 10692
    invoke-virtual {p3, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 10728
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10730
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10731
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onItemsAdded(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onItemsChanged(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onItemsMoved(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;III)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onItemsRemoved(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onItemsUpdated(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onItemsUpdated(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10416
    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public onLayoutChildren(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    const-string p0, "RecyclerView"

    const-string p1, "You must override onLayoutChildren(Recycler recycler, State state) "

    .line 8601
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLayoutCompleted(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    return-void
.end method

.method public onMeasure(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;II)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10546
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void
.end method

.method public onRequestChildFocus(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10307
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isComputingLayout()Z

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

.method public onRequestChildFocus(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10329
    invoke-virtual {p0, p1, p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method onSmoothScrollerStopped(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .locals 1

    .line 10612
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 10613
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;

    :cond_0
    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10837
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public performAccessibilityAction(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10853
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/16 p1, 0x1000

    const/4 p4, 0x1

    if-eq p3, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p3, p1, :cond_1

    move v1, p2

    move v2, v1

    goto/16 :goto_3

    .line 10859
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10860
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    neg-int p1, p1

    goto :goto_0

    :cond_2
    move p1, p2

    .line 10862
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 10863
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    sub-int/2addr p3, v0

    neg-int p3, p3

    goto :goto_2

    .line 10867
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10868
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_1

    :cond_4
    move p1, p2

    .line 10870
    :goto_1
    iget-object p3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 10871
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    sub-int/2addr p3, v0

    :goto_2
    move v2, p1

    move v1, p3

    goto :goto_3

    :cond_5
    move v2, p1

    move v1, p2

    :goto_3
    if-nez v2, :cond_6

    if-nez v1, :cond_6

    return p2

    .line 10878
    :cond_6
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    return p4
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10885
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v3, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public performAccessibilityActionForItem(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 1

    .line 8464
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8465
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .line 8967
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 8969
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAndRecycleAllViews(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 2
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10638
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 10639
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 10640
    invoke-static {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10641
    invoke-virtual {p0, v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeAndRecycleScrapInt(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 6

    .line 9543
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->getScrapCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 9546
    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 9547
    invoke-static {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 9548
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 9556
    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 9557
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9558
    iget-object v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9560
    :cond_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_2

    .line 9561
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_2
    const/4 v4, 0x1

    .line 9563
    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 9564
    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 9566
    :cond_3
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->clearScrap()V

    if-lez v0, :cond_4

    .line 9568
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_4
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9216
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 9217
    invoke-virtual {p2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method public removeAndRecycleViewAt(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9227
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9228
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 9229
    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1

    .line 8482
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8483
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9162
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 8943
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .line 8955
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8957
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->removeViewAt(I)V

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 10196
    invoke-virtual/range {v0 .. v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p0

    return p0
.end method

.method public requestChildRectangleOnScreen(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 2
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10217
    invoke-direct {p0, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildRectangleOnScreenScrollAmount(Landroid/view/View;Landroid/graphics/Rect;)[I

    move-result-object p2

    const/4 p3, 0x0

    .line 10219
    aget v0, p2, p3

    const/4 v1, 0x1

    .line 10220
    aget p2, p2, v1

    if-eqz p5, :cond_0

    .line 10221
    invoke-direct {p0, p1, v0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->isFocusedChildVisibleAfterScrolling(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 10224
    invoke-virtual {p1, v0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    .line 10226
    :cond_3
    invoke-virtual {p1, v0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :goto_1
    return v1
.end method

.method public requestLayout()V
    .locals 1

    .line 8174
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8175
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 10765
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public scrollToPosition(I)V
    .locals 0

    return-void
.end method

.method public scrollVerticallyBy(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAutoMeasureEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8242
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    return-void
.end method

.method setExactMeasureSpecsFrom(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 10936
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10937
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 10935
    invoke-virtual {p0, v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    return-void
.end method

.method public final setItemPrefetchEnabled(Z)V
    .locals 1

    .line 8362
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    if-eq p1, v0, :cond_0

    .line 8363
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    const/4 p1, 0x0

    .line 8364
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 8365
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 8366
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    :cond_0
    return-void
.end method

.method setMeasureSpecs(II)V
    .locals 1

    .line 8085
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 8086
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 8087
    iget p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_0

    .line 8088
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 8091
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 8092
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 8093
    iget p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_1

    .line 8094
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    :cond_1
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 0

    .line 10557
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-static {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->access$300(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 2

    .line 8163
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 8164
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    add-int/2addr p1, v1

    .line 8165
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    .line 8166
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    .line 8167
    invoke-virtual {p0, p2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .locals 8

    .line 8112
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 8114
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    move v4, v2

    move v5, v4

    move v2, v3

    :goto_0
    if-ge v1, v0, :cond_5

    .line 8123
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 8124
    iget-object v7, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 8125
    invoke-virtual {p0, v6, v7}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8126
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_1

    .line 8127
    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 8129
    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v4, :cond_2

    .line 8130
    iget v4, v7, Landroid/graphics/Rect;->right:I

    .line 8132
    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v2, :cond_3

    .line 8133
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 8135
    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v5, :cond_4

    .line 8136
    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8139
    :cond_5
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 8140
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public setMeasurementCacheEnabled(Z)V
    .locals 0

    .line 9650
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return-void
.end method

.method setRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 8070
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 8071
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    const/4 p1, 0x0

    .line 8072
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 8073
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    goto :goto_0

    .line 8075
    :cond_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 8076
    iget-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    .line 8077
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 8078
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    .line 8080
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 8081
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    return-void
.end method

.method shouldMeasureChild(Landroid/view/View;IILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    .line 9623
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz p0, :cond_1

    .line 9625
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    iget v0, p4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {p0, p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9626
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    iget p1, p4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {p0, p3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-nez p0, :cond_0

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

.method shouldMeasureTwice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    .line 9608
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz p0, :cond_1

    .line 9609
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    iget v0, p4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {p0, p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9610
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget p1, p4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {p0, p3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public smoothScrollToPosition(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    const-string p0, "RecyclerView"

    const-string p1, "You must override smoothScrollToPosition to support smooth scrolling"

    .line 8769
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startSmoothScroll(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .locals 1

    .line 8783
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 8784
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8785
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 8787
    :cond_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 8788
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->start(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9493
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    .line 9494
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->stopIgnoring()V

    .line 9495
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    const/4 p1, 0x4

    .line 9496
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-void
.end method

.method stopSmoothScroller()V
    .locals 1

    .line 10606
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    .line 10607
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
