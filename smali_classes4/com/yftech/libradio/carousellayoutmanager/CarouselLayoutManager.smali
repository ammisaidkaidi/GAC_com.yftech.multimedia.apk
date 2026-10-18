.class public Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "CarouselLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;,
        Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;,
        Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;,
        Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;,
        Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;
    }
.end annotation


# static fields
.field private static final CIRCLE_LAYOUT:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_POSITION:I = -0x1

.field public static final MAX_VISIBLE_ITEMS:I = 0x3

.field public static final VERTICAL:I = 0x1


# instance fields
.field private idForchangeAlphaView:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private mCanScrollHorizontally:Z

.field private mCenterItemPosition:I

.field private mCircleLayout:Z

.field private mDecoratedChildHeight:Ljava/lang/Integer;

.field private mDecoratedChildSizeInvalid:Z

.field private mDecoratedChildWidth:Ljava/lang/Integer;

.field private mItemsCount:I

.field private final mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

.field private final mOnCenterItemSelectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientation:I

.field private mPendingCarouselSavedState:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPendingScrollPosition:I

.field private mViewPostLayout:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 94
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 63
    new-instance v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOnCenterItemSelectionListeners:Ljava/util/List;

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    const/4 v1, 0x1

    .line 71
    iput-boolean v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCanScrollHorizontally:Z

    if-eqz p1, :cond_1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation should be HORIZONTAL or VERTICAL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_1
    :goto_0
    iput p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    .line 99
    iput-boolean p2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCircleLayout:Z

    .line 100
    iput v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->selectItemCenterPosition(I)V

    return-void
.end method

.method private bindChild(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 0
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 677
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    .line 679
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->addView(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 680
    invoke-virtual {p0, p1, p2, p2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    return-object p1
.end method

.method private calculateScrollForSelectingPosition(ILandroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 429
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    .line 430
    :goto_0
    iget p2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    if-ne v1, p2, :cond_2

    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method private detectOnItemSelectionChanged(FLandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 454
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    invoke-static {p1, p2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->makeScrollPositionInRange0ToCount(FI)F

    move-result p1

    .line 455
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 457
    iget p2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    if-eq p2, p1, :cond_0

    .line 458
    iput p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    .line 459
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$2;

    invoke-direct {v0, p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$2;-><init>(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private fillChildItem(IIIILcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 4
    .param p5    # Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 574
    invoke-static {p5}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result v0

    invoke-direct {p0, v0, p6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->bindChild(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object p6

    int-to-float v0, p7

    .line 575
    invoke-static {p6, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 577
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mViewPostLayout:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mViewPostLayout:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;

    invoke-static {p5}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v1

    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    invoke-static {p5}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result v2

    invoke-virtual {v0, p6, v1, p0, v2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;->transformChild(Landroid/view/View;FII)Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 581
    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :cond_1
    int-to-float v0, p1

    .line 583
    iget v1, p0, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mTranslationX:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float p2, p2

    iget v1, p0, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mTranslationY:F

    add-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float v1, p3

    iget v2, p0, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mTranslationX:F

    add-float/2addr v1, v2

    .line 584
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float p4, p4

    iget v2, p0, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mTranslationY:F

    add-float/2addr p4, v2

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    .line 583
    invoke-virtual {p6, v0, p2, v1, p4}, Landroid/view/View;->layout(IIII)V

    .line 585
    iget p2, p0, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleX:F

    invoke-virtual {p6, p2}, Landroid/view/View;->setScaleX(F)V

    .line 586
    iget p2, p0, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleY:F

    invoke-virtual {p6, p2}, Landroid/view/View;->setScaleY(F)V

    .line 587
    invoke-static {p5}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result p2

    float-to-double v0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p2, v0, v2

    const/4 p4, 0x0

    if-lez p2, :cond_2

    .line 588
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p0, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mTranslationX:F

    iget v1, p0, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleX:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p2, v0, p4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p6, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 590
    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p2, p4, p4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p6, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_1
    const-string p2, "++++"

    .line 592
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "idx="

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, " pos="

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, " start="

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " end="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " diff="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " tX="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mTranslationX:F

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private fillData(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 434
    invoke-direct {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getCurrentScrollPosition()F

    move-result v0

    .line 436
    invoke-direct {p0, v0, p2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->generateLayoutOrder(FLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 437
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 438
    invoke-direct {p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->recyclerOldViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 440
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getWidthNoPadding()I

    move-result v1

    .line 441
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getHeightNoPadding()I

    move-result v2

    .line 442
    iget v3, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v4, v3, :cond_0

    .line 443
    invoke-direct {p0, p1, v1, v2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->fillDataVertical(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 445
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->fillDataHorizontal(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 448
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 450
    invoke-direct {p0, v0, p2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->detectOnItemSelectionChanged(FLandroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method private fillDataHorizontal(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 20

    move-object/from16 v0, p0

    .line 490
    iget-object v1, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, p3, v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 491
    iget-object v3, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v1

    .line 493
    iget-object v4, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, p2, v4

    div-int/2addr v4, v2

    .line 497
    iget-object v5, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v5}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-lez v5, :cond_0

    .line 498
    iget-object v5, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v5}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v5

    iget-object v8, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v8}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v8

    array-length v8, v8

    sub-int/2addr v8, v6

    aget-object v5, v5, v8

    invoke-static {v5}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 502
    :goto_0
    iget-object v8, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v8}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_c

    .line 503
    iget-object v10, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v10}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v10

    aget-object v10, v10, v9

    .line 504
    invoke-static {v10}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v11

    invoke-virtual {v0, v11}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getCardOffsetByPositionDiff(F)I

    move-result v11

    add-int/2addr v11, v4

    .line 506
    iget-object v12, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v11

    .line 509
    invoke-static {v10}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result v13

    move-object/from16 v14, p1

    invoke-direct {v0, v13, v14}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->bindChild(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v13

    int-to-float v15, v9

    .line 510
    invoke-static {v13, v15}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 512
    iget-object v15, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mViewPostLayout:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;

    if-eqz v15, :cond_1

    .line 513
    iget-object v15, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mViewPostLayout:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;

    invoke-static {v10}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v2

    iget v6, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    invoke-static {v10}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result v7

    invoke-virtual {v15, v13, v2, v6, v7}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;->transformChild(Landroid/view/View;FII)Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;

    move-result-object v15

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_3

    .line 516
    invoke-virtual {v13, v11, v1, v12, v3}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_3
    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_3
    int-to-float v2, v11

    .line 518
    iget v6, v15, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mTranslationX:F

    add-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v7, v1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v11, v12

    iget v12, v15, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mTranslationX:F

    add-float/2addr v11, v12

    .line 519
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v12, v3

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 518
    invoke-virtual {v13, v6, v7, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 522
    iget v6, v15, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleX:F

    invoke-virtual {v13, v6}, Landroid/view/View;->setScaleX(F)V

    .line 523
    iget v6, v15, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleY:F

    invoke-virtual {v13, v6}, Landroid/view/View;->setScaleY(F)V

    .line 525
    iget v6, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->idForchangeAlphaView:I

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    .line 526
    iget v6, v15, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleY:F

    float-to-double v11, v6

    const-wide v18, 0x3feccccccccccccdL    # 0.9

    cmpl-double v6, v11, v18

    if-lez v6, :cond_4

    .line 527
    iget v6, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->idForchangeAlphaView:I

    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    .line 529
    :cond_4
    iget v6, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->idForchangeAlphaView:I

    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, v15, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleY:F

    const/high16 v16, 0x40800000    # 4.0f

    div-float v12, v12, v16

    sub-float/2addr v11, v12

    invoke-virtual {v6, v11}, Landroid/view/View;->setAlpha(F)V

    .line 532
    :cond_5
    :goto_4
    invoke-static {v10}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result v6

    if-ne v6, v5, :cond_6

    .line 533
    new-instance v2, Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x0

    invoke-direct {v2, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v13, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 535
    :cond_6
    invoke-static {v10}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result v6

    sub-int/2addr v6, v5

    const/4 v10, -0x1

    const/high16 v16, 0x3f000000    # 0.5f

    if-ne v6, v10, :cond_8

    .line 537
    iget-object v6, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v6

    iget-object v10, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v10}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v10

    array-length v10, v10

    const/16 v17, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-object v6, v6, v10

    .line 538
    iget-object v10, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mViewPostLayout:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;

    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v11

    iget v7, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result v12

    invoke-virtual {v10, v13, v11, v7, v12}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;->transformChild(Landroid/view/View;FII)Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;

    move-result-object v7

    .line 539
    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v10

    invoke-virtual {v0, v10}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getCardOffsetByPositionDiff(F)I

    move-result v10

    add-int/2addr v10, v4

    int-to-float v10, v10

    iget v11, v7, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleX:F

    const/high16 v12, 0x41f00000    # 30.0f

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 540
    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v6

    const/4 v11, 0x0

    cmpg-float v6, v6, v11

    if-gez v6, :cond_7

    .line 541
    new-instance v6, Landroid/graphics/Rect;

    sub-float/2addr v10, v2

    iget v2, v15, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleX:F

    div-float/2addr v10, v2

    add-float v10, v10, v16

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v7, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x0

    invoke-direct {v6, v10, v10, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v13, v6}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 543
    :cond_7
    new-instance v6, Landroid/graphics/Rect;

    sub-float/2addr v10, v2

    iget v2, v7, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mTranslationX:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v2, v7

    add-float/2addr v10, v2

    iget v2, v15, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleX:F

    div-float/2addr v10, v2

    sub-float v10, v10, v16

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v7, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x0

    invoke-direct {v6, v10, v10, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v13, v6}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :cond_8
    const/4 v7, -0x2

    if-ne v6, v7, :cond_9

    .line 546
    iget-object v6, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v6

    add-int/lit8 v7, v9, 0x1

    aget-object v6, v6, v7

    .line 547
    iget-object v7, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mViewPostLayout:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;

    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v10

    iget v11, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result v12

    invoke-virtual {v7, v13, v10, v11, v12}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;->transformChild(Landroid/view/View;FII)Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;

    move-result-object v7

    .line 548
    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getCardOffsetByPositionDiff(F)I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    iget v7, v7, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleX:F

    const/high16 v10, 0x41f00000    # 30.0f

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 549
    new-instance v7, Landroid/graphics/Rect;

    sub-float/2addr v6, v2

    iget v2, v15, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleX:F

    div-float/2addr v6, v2

    add-float v6, v6, v16

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v6, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v13, v7}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :cond_9
    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 551
    iget-object v6, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v6

    iget-object v10, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v10}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v10

    array-length v10, v10

    sub-int/2addr v10, v7

    aget-object v6, v6, v10

    .line 552
    iget-object v10, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mViewPostLayout:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;

    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v11

    iget v12, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result v7

    invoke-virtual {v10, v13, v11, v12, v7}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;->transformChild(Landroid/view/View;FII)Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;

    move-result-object v7

    .line 553
    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v10

    invoke-virtual {v0, v10}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getCardOffsetByPositionDiff(F)I

    move-result v10

    add-int/2addr v10, v4

    int-to-float v10, v10

    iget v11, v7, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleX:F

    const/high16 v12, 0x41f00000    # 30.0f

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    .line 554
    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v6

    const/4 v11, 0x0

    cmpg-float v6, v6, v11

    if-gez v6, :cond_a

    .line 555
    new-instance v6, Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    neg-float v10, v10

    add-float/2addr v10, v2

    iget v2, v7, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mTranslationX:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v2, v7

    sub-float/2addr v10, v2

    iget v2, v15, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleX:F

    div-float/2addr v10, v2

    sub-float v10, v10, v16

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v11, v2

    iget-object v2, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v7, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x0

    invoke-direct {v6, v11, v10, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v13, v6}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 557
    :cond_a
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-float/2addr v2, v10

    iget v10, v15, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleX:F

    div-float/2addr v2, v10

    add-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v7, v2

    iget-object v2, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v10, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {v6, v7, v11, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v13, v6}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :cond_b
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 560
    iget-object v6, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v6

    add-int/lit8 v10, v9, 0x1

    aget-object v6, v6, v10

    .line 561
    iget-object v10, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mViewPostLayout:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;

    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v11

    iget v12, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result v7

    invoke-virtual {v10, v13, v11, v12, v7}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;->transformChild(Landroid/view/View;FII)Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;

    move-result-object v7

    .line 562
    invoke-static {v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getCardOffsetByPositionDiff(F)I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    iget v7, v7, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleX:F

    const/high16 v10, 0x41f00000    # 30.0f

    mul-float/2addr v7, v10

    sub-float/2addr v6, v7

    .line 563
    new-instance v7, Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-float/2addr v2, v6

    iget v6, v15, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;->mScaleX:F

    div-float/2addr v2, v6

    add-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v10, v2

    iget-object v2, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v6, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v11, 0x0

    invoke-direct {v7, v10, v11, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v13, v7}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x2

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_c
    return-void
.end method

.method private fillDataVertical(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 11

    .line 475
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    .line 476
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v8, p2, v0

    .line 478
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    .line 480
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v0

    array-length v9, v0

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v9, :cond_0

    .line 481
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v0

    aget-object v5, v0, v10

    .line 482
    invoke-static {v5}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getCardOffsetByPositionDiff(F)I

    move-result v0

    add-int v2, p3, v0

    .line 484
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v4, v2, v0

    move-object v0, p0

    move v1, p2

    move v3, v8

    move-object v6, p1

    move v7, v10

    .line 485
    invoke-direct/range {v0 .. v7}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->fillChildItem(IIIILcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateLayoutOrder(FLandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 11
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 627
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    iput p2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    .line 628
    iget p2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    invoke-static {p1, p2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->makeScrollPositionInRange0ToCount(FI)F

    move-result p1

    .line 629
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 631
    iget-boolean v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCircleLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    if-ge v1, v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iget v2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 634
    iget-object v2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-virtual {v2, v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->initLayoutOrder(I)V

    .line 636
    div-int/lit8 v2, v0, 0x2

    move v3, v1

    :goto_0
    if-gt v3, v2, :cond_0

    int-to-float v4, v3

    sub-float v5, p1, v4

    .line 639
    iget v6, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    rem-int/2addr v5, v6

    .line 640
    iget-object v6, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    sub-int v7, v2, v3

    int-to-float v8, p2

    sub-float/2addr v8, p1

    sub-float/2addr v8, v4

    invoke-virtual {v6, v7, v5, v8}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, -0x1

    move v4, v3

    :goto_1
    add-int/lit8 v5, v2, 0x1

    if-lt v4, v5, :cond_1

    int-to-float v5, v4

    sub-float v6, p1, v5

    int-to-float v7, v0

    add-float/2addr v6, v7

    .line 644
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v8, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    rem-int/2addr v6, v8

    .line 645
    iget-object v8, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    add-int/lit8 v9, v4, -0x1

    int-to-float v10, p2

    sub-float/2addr v10, p1

    add-float/2addr v10, v7

    sub-float/2addr v10, v5

    invoke-virtual {v8, v9, v6, v10}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 647
    :cond_1
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    int-to-float v0, p2

    sub-float/2addr v0, p1

    invoke-virtual {p0, v3, p2, v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    goto :goto_4

    .line 650
    :cond_2
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v0

    sub-int v0, p2, v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 651
    iget-object v2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v2

    add-int/2addr v2, p2

    iget v3, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v3, v2, v0

    add-int/2addr v3, v1

    .line 654
    iget-object v4, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-virtual {v4, v3}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->initLayoutOrder(I)V

    move v4, v0

    :goto_2
    if-gt v4, v2, :cond_5

    if-ne v4, p2, :cond_3

    .line 658
    iget-object v5, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    add-int/lit8 v6, v3, -0x1

    int-to-float v7, v4

    sub-float/2addr v7, p1

    invoke-virtual {v5, v6, v4, v7}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    goto :goto_3

    :cond_3
    if-ge v4, p2, :cond_4

    .line 660
    iget-object v5, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    sub-int v6, v4, v0

    int-to-float v7, v4

    sub-float/2addr v7, p1

    invoke-virtual {v5, v6, v4, v7}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    goto :goto_3

    .line 662
    :cond_4
    iget-object v5, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    sub-int v6, v4, p2

    sub-int v6, v3, v6

    sub-int/2addr v6, v1

    int-to-float v7, v4

    sub-float/2addr v7, p1

    invoke-virtual {v5, v6, v4, v7}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    return-void
.end method

.method private getCurrentScrollPosition()F
    .locals 2

    .line 601
    invoke-direct {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getMaxScrollOffset()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 605
    iget-object v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getScrollItemSize()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1
.end method

.method private getMaxScrollOffset()I
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getScrollItemSize()I

    move-result v0

    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr v0, p0

    return v0
.end method

.method private getScrollDirection(I)F
    .locals 2

    .line 259
    invoke-direct {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getCurrentScrollPosition()F

    move-result v0

    iget v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    invoke-static {v0, v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->makeScrollPositionInRange0ToCount(FI)F

    move-result v0

    .line 261
    iget-boolean v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCircleLayout:Z

    if-eqz v1, :cond_1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 263
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    .line 264
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    .line 265
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    mul-float/2addr p0, p1

    return p0

    :cond_0
    return v0

    :cond_1
    int-to-float p0, p1

    sub-float/2addr v0, p0

    return v0
.end method

.method private static makeScrollPositionInRange0ToCount(FI)F
    .locals 1

    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, v0, p0

    if-lez v0, :cond_0

    int-to-float v0, p1

    add-float/2addr p0, v0

    goto :goto_0

    .line 813
    :cond_0
    :goto_1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lt v0, p1, :cond_1

    int-to-float v0, p1

    sub-float/2addr p0, v0

    goto :goto_1

    :cond_1
    return p0
.end method

.method private recyclerOldViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 8

    .line 686
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 687
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 689
    iget-object v3, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v3}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 690
    invoke-static {v7}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result v7

    if-ne v7, v2, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v5, :cond_0

    .line 696
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private selectItemCenterPosition(I)V
    .locals 1

    .line 469
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOnCenterItemSelectionListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;

    .line 470
    invoke-interface {v0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;->onCenterItemChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnItemSelectionListener(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;)V
    .locals 0
    .param p1    # Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 196
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOnCenterItemSelectionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCanScrollHorizontally:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 247
    :cond_0
    invoke-direct {p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getScrollDirection(I)F

    move-result p1

    .line 249
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    .line 251
    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 252
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    .line 254
    :cond_1
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method protected convertItemPositionDiffToSmoothPositionDiff(F)D
    .locals 6

    .line 742
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    .line 745
    iget-object v2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    float-to-double v2, v3

    const-wide v4, 0x3fd5555560000000L    # 0.3333333432674408

    invoke-static {v2, v3, v4, v5}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 747
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {p0, p1, v0, v1}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    .line 751
    invoke-static {v0, v1, p0, p1}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 155
    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method protected getCardOffsetByPositionDiff(F)I
    .locals 4

    .line 716
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->convertItemPositionDiffToSmoothPositionDiff(F)D

    move-result-wide v0

    .line 719
    iget v2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getHeightNoPadding()I

    move-result v2

    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v2, p0

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getWidthNoPadding()I

    move-result v2

    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v2, p0

    div-int/lit8 v2, v2, 0x2

    .line 725
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v2

    mul-float/2addr p0, p1

    float-to-double p0, p0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getCenterItemPosition()I
    .locals 0

    .line 189
    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    return p0
.end method

.method public getHeightNoPadding()I
    .locals 2

    .line 673
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getPaddingStart()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getMaxVisibleItems()I
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result p0

    return p0
.end method

.method protected getOffsetCenterView()I
    .locals 2

    .line 791
    invoke-direct {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getCurrentScrollPosition()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getScrollItemSize()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method protected getOffsetForCurrentView(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 795
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 796
    invoke-direct {p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getScrollDirection(I)F

    move-result p1

    .line 798
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getScrollItemSize()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 164
    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    return p0
.end method

.method protected getScrollItemSize()I
    .locals 2

    .line 759
    iget v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 760
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 762
    :cond_0
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getWidthNoPadding()I
    .locals 2

    .line 669
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getPaddingEnd()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 352
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 354
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->removeAllViews()V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 361
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 363
    invoke-direct {p0, v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->selectItemCenterPosition(I)V

    return-void

    .line 367
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 369
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildSizeInvalid:Z

    if-eqz v0, :cond_7

    .line 370
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v0

    .line 374
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 376
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 377
    iget v4, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    if-ne v4, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v2

    iget v4, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 380
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 377
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 382
    invoke-virtual {p0, v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->addView(Landroid/view/View;)V

    move v4, v2

    goto :goto_1

    .line 385
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v4, v3

    .line 387
    :goto_1
    invoke-virtual {p0, v0, v3, v3}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 389
    invoke-virtual {p0, v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 390
    invoke-virtual {p0, v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v6

    if-eqz v4, :cond_4

    .line 392
    invoke-virtual {p0, v0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 395
    :cond_4
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_6

    .line 396
    :cond_5
    iget v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    if-nez v0, :cond_6

    .line 397
    iget v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    iput v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 401
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    .line 402
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    .line 403
    iput-boolean v3, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildSizeInvalid:Z

    .line 406
    :cond_7
    iget v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    if-eq v1, v0, :cond_9

    .line 407
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_2

    :cond_8
    sub-int/2addr v0, v2

    .line 408
    iget v2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 410
    :cond_9
    iget v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_a

    .line 411
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    iget v3, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    invoke-direct {p0, v3, p2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->calculateScrollForSelectingPosition(ILandroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    .line 412
    iput v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 413
    iput-object v2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    goto :goto_3

    .line 414
    :cond_a
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    if-eqz v0, :cond_b

    .line 415
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    iget-object v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    invoke-static {v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->access$200(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->calculateScrollForSelectingPosition(ILandroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    .line 416
    iput-object v2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    goto :goto_3

    .line 417
    :cond_b
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->didStructureChange()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    if-eq v1, v0, :cond_c

    .line 418
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    iget v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    invoke-direct {p0, v1, p2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->calculateScrollForSelectingPosition(ILandroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    .line 421
    :cond_c
    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->fillData(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 344
    iput-boolean v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildSizeInvalid:Z

    .line 346
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 778
    instance-of v0, p1, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    if-eqz v0, :cond_0

    .line 779
    check-cast p1, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    iput-object p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    .line 781
    iget-object p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    invoke-static {p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->access$700(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 783
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    if-eqz v0, :cond_0

    .line 769
    new-instance v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;-><init>(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;)V

    return-object v0

    .line 771
    :cond_0
    new-instance v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 772
    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    invoke-static {v0, p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->access$202(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;I)I

    return-object v0
.end method

.method public removeOnItemSelectionListener(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;)V
    .locals 0
    .param p1    # Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 203
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOnCenterItemSelectionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 310
    :cond_1
    iget-boolean v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCircleLayout:Z

    if-eqz v0, :cond_4

    .line 313
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    .line 315
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getScrollItemSize()I

    move-result v0

    iget v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    mul-int/2addr v0, v1

    .line 316
    :goto_0
    iget-object v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    if-gez v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    goto :goto_0

    .line 319
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    if-le v1, v0, :cond_3

    .line 320
    iget-object v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    goto :goto_1

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    goto :goto_2

    .line 325
    :cond_4
    invoke-direct {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getMaxScrollOffset()I

    move-result v0

    .line 327
    iget-object v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    add-int/2addr v1, p1

    if-gez v1, :cond_5

    .line 328
    iget-object p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result p1

    neg-int p1, p1

    goto :goto_2

    .line 329
    :cond_5
    iget-object v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    add-int/2addr v1, p1

    if-le v1, v0, :cond_6

    .line 330
    iget-object p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result p1

    sub-int p1, v0, p1

    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    .line 336
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    .line 337
    invoke-direct {p0, p2, p3}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->fillData(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    :cond_7
    return p1

    :cond_8
    :goto_3
    return v1

    :cond_9
    :goto_4
    return v1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 284
    iget v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 287
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public scrollToPosition(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 212
    iput p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 213
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->requestLayout()V

    return-void

    .line 210
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position can\'t be less then 0. position is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 276
    iget v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 279
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public setCanScrollHorizontally(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCanScrollHorizontally:Z

    return-void
.end method

.method public setCircleLayout(Z)V
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCircleLayout:Z

    if-eq v0, p1, :cond_0

    .line 109
    iput-boolean p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mCircleLayout:Z

    .line 110
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setIdForchangeAlphaView(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 182
    iput p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->idForchangeAlphaView:I

    return-void
.end method

.method public setMaxVisibleItems(I)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    if-ltz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$002(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    .line 141
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->requestLayout()V

    return-void

    .line 138
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxVisibleItems can\'t be less then 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPostLayoutListener(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;)V
    .locals 0
    .param p1    # Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 124
    iput-object p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->mViewPostLayout:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;

    .line 125
    invoke-virtual {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->requestLayout()V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 219
    new-instance p2, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$1;-><init>(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;Landroid/content/Context;)V

    .line 237
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 238
    invoke-virtual {p0, p2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
