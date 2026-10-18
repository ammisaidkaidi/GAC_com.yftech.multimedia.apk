.class public Lcom/wuyr/pathlayoutmanager/PathLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "PathLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyr/pathlayoutmanager/PathLayoutManager$OnItemSelectedListener;
    }
.end annotation


# static fields
.field public static final SCROLL_MODE_LOOP:I = 0x2

.field public static final SCROLL_MODE_NORMAL:I = 0x0

.field public static final SCROLL_MODE_OVERFLOW:I = 0x1


# instance fields
.field private isAnimatorInitialized:Z

.field private isAutoSelect:Z

.field private isFlingEnable:Z

.field private isFlinging:Z

.field private isItemDirectionFixed:Z

.field private volatile isPosting:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAutoSelectFraction:F

.field private mCacheCount:I

.field private mFirstVisibleItemPos:I

.field private mFixingAnimationDuration:J

.field private mItemAnimator:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

.field private mItemCountInScreen:I

.field private mItemOffset:I

.field private mItemSelectedListener:Lcom/wuyr/pathlayoutmanager/PathLayoutManager$OnItemSelectedListener;

.field private mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

.field private mOffsetX:F

.field private mOffsetY:F

.field private mOrientation:I

.field private mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field private mScaleRatio:[F

.field private mScrollMode:I

.field private mState:Landroidx/recyclerview/widget/RecyclerView$State;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;I)V
    .locals 1

    const/4 v0, 0x1

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;-><init>(Landroid/graphics/Path;II)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;II)V
    .locals 2

    .line 90
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x2

    .line 91
    iput v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mCacheCount:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 92
    iput v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mAutoSelectFraction:F

    const-wide/16 v0, 0xfa

    .line 93
    iput-wide v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mFixingAnimationDuration:J

    .line 94
    iput p3, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOrientation:I

    .line 95
    iput p2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    const/4 p2, 0x1

    .line 96
    iput-boolean p2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isFlingEnable:Z

    .line 97
    invoke-virtual {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->updatePath(Landroid/graphics/Path;)V

    .line 98
    new-instance p1, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-direct {p1}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;-><init>()V

    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemAnimator:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    .line 99
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemAnimator:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    new-instance p2, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$1;

    invoke-direct {p2, p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$1;-><init>(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)V

    invoke-virtual {p1, p2}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->setOnErrorListener(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$OnErrorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)Landroidx/recyclerview/widget/RecyclerView$State;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    return-object p0
.end method

.method static synthetic access$200(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;F)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->updateOffsetY(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;F)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->updateOffsetX(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isAutoSelect:Z

    return p0
.end method

.method static synthetic access$500(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)Lcom/wuyr/pathlayoutmanager/PathLayoutManager$OnItemSelectedListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemSelectedListener:Lcom/wuyr/pathlayoutmanager/PathLayoutManager$OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->delayNotifyDataSetChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private checkKeyframes()V
    .locals 1

    .line 992
    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    if-eqz p0, :cond_0

    return-void

    .line 993
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Path not set!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private delayNotifyDataSetChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 1051
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1052
    iput-boolean v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isPosting:Z

    .line 1053
    new-instance v0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$4;

    invoke-direct {v0, p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$4;-><init>(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1060
    :cond_0
    iget-boolean v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isPosting:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1061
    iput-boolean v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isPosting:Z

    .line 1062
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method private findClosestPosition()I
    .locals 8

    .line 858
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getNeedLayoutItems()Ljava/util/List;

    move-result-object v0

    .line 859
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 860
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    iget v1, v1, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->index:I

    .line 861
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    iget v3, v3, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->fraction:F

    iget v4, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mAutoSelectFraction:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 862
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    .line 863
    iget v6, v5, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->fraction:F

    iget v7, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mAutoSelectFraction:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v7, v6, v3

    if-gez v7, :cond_0

    .line 866
    iget v1, v5, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->index:I

    move v3, v6

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :cond_2
    if-gez v1, :cond_3

    .line 872
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 873
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    iget v1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->index:I

    :cond_3
    return v1
.end method

.method private fixOverflowIndex(II)I
    .locals 0

    :goto_0
    if-gez p1, :cond_0

    add-int/2addr p1, p2

    goto :goto_0

    .line 434
    :cond_0
    rem-int/2addr p1, p2

    return p1
.end method

.method private getDistance(I)I
    .locals 5

    .line 745
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getVisiblePosTanByPosition(I)Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    move-result-object v0

    if-nez v0, :cond_2

    .line 749
    invoke-virtual {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getItemCount()I

    move-result v1

    .line 750
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->findClosestPosition()I

    move-result v2

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int v3, v2, v0

    .line 754
    invoke-direct {p0, v3, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->fixOverflowIndex(II)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 756
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isSatisfiedLoopScroll()Z

    move-result v1

    if-eqz v1, :cond_1

    sub-int/2addr v2, p1

    .line 757
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_1

    move p1, v3

    .line 761
    :cond_1
    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getScrollOffset()F

    move-result v0

    sub-float/2addr p1, v0

    goto :goto_0

    .line 765
    :cond_2
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-virtual {p1}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->getPathLength()I

    move-result p1

    int-to-float p1, p1

    iget v0, v0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->fraction:F

    mul-float/2addr p1, v0

    .line 768
    :goto_0
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-virtual {v0}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->getPathLength()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mAutoSelectFraction:F

    mul-float/2addr v0, p0

    sub-float/2addr p1, v0

    float-to-int p0, p1

    return p0
.end method

.method private getItemLength()I
    .locals 2

    .line 590
    invoke-virtual {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getNeedLayoutItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;",
            ">;"
        }
    .end annotation

    .line 291
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->checkKeyframes()V

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    invoke-virtual {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getItemCount()I

    move-result v1

    .line 296
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isSatisfiedLoopScroll()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    invoke-direct {p0, v0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->initNeedLayoutLoopScrollItems(Ljava/util/List;I)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->initNeedLayoutItems(Ljava/util/List;I)V

    :goto_0
    return-object v0
.end method

.method private getOverflowCount()I
    .locals 4

    .line 379
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getItemLength()I

    move-result v0

    .line 382
    iget-object v1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-virtual {v1}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->getPathLength()I

    move-result v1

    .line 387
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getScrollOffset()F

    move-result v2

    int-to-float v3, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v3, v2, v0

    add-int/2addr v1, v0

    if-le v2, v1, :cond_0

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 406
    :goto_0
    rem-int/2addr v3, v0

    add-int/2addr v3, v2

    .line 409
    iget p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    div-int/2addr v3, p0

    return v3
.end method

.method private getScale(F)F
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    move v7, v0

    move v5, v1

    move v6, v2

    move v4, v3

    .line 234
    :goto_0
    iget-object v8, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    array-length v8, v8

    if-ge v4, v8, :cond_0

    .line 235
    iget-object v8, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    aget v8, v8, v4

    cmpg-float v8, v8, p1

    if-gtz v8, :cond_0

    .line 237
    iget-object v5, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    add-int/lit8 v6, v4, -0x1

    aget v7, v5, v6

    .line 238
    iget-object v5, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    aget v6, v5, v4

    add-int/lit8 v4, v4, 0x2

    move v5, v3

    goto :goto_0

    .line 245
    :cond_0
    iget-object v4, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    array-length v4, v4

    sub-int/2addr v4, v3

    move v8, v0

    move v0, v2

    :goto_1
    if-lt v4, v3, :cond_1

    .line 246
    iget-object v9, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    aget v9, v9, v4

    cmpl-float v9, v9, p1

    if-ltz v9, :cond_1

    .line 248
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    add-int/lit8 v1, v4, -0x1

    aget v8, v0, v1

    .line 249
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    aget v0, v0, v4

    add-int/lit8 v4, v4, -0x2

    move v1, v3

    goto :goto_1

    :cond_1
    if-nez v5, :cond_2

    move v7, v2

    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v8

    .line 261
    :goto_2
    invoke-direct {p0, v6, v0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->solveTwoPointForm(FFF)F

    move-result p1

    sub-float/2addr v2, v7

    mul-float/2addr v2, p1

    add-float p1, v7, v2

    .line 265
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isFinite(F)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move p1, v7

    :goto_3
    return p1
.end method

.method private getScrollOffset()F
    .locals 2

    .line 597
    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    :goto_0
    return p0
.end method

.method private getVisiblePosTanByPosition(I)Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 774
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getNeedLayoutItems()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 776
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 777
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    .line 778
    iget v2, v1, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->index:I

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private initItemAnimator()V
    .locals 3

    .line 162
    :try_start_0
    const-class v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const-string v1, "mRecyclerView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 166
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    const/4 v1, 0x0

    .line 167
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 168
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 169
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemAnimator:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    if-eq v1, v2, :cond_0

    .line 170
    iget-object v1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemAnimator:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mCacheCount:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->setViewCacheSize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initNeedLayoutItems(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 349
    iget v1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    mul-int/2addr v1, v0

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getScrollOffset()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 351
    iput v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mFirstVisibleItemPos:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    :goto_1
    iget p2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mFirstVisibleItemPos:I

    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemCountInScreen:I

    add-int/2addr p2, v0

    .line 357
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getItemCount()I

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    :goto_2
    if-le p2, v0, :cond_3

    move p2, v0

    .line 363
    :cond_3
    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mFirstVisibleItemPos:I

    :goto_3
    if-ge v0, p2, :cond_5

    .line 364
    iget v1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    mul-int/2addr v1, v0

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getScrollOffset()F

    move-result v2

    sub-float/2addr v1, v2

    .line 365
    iget-object v2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-virtual {v2}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->getPathLength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 366
    iget-object v2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-virtual {v2, v1}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->getValue(F)Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    .line 370
    :cond_4
    new-instance v3, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    invoke-direct {v3, v2, v0, v1}, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;-><init>(Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;IF)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private initNeedLayoutLoopScrollItems(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;",
            ">;I)V"
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getOverflowCount()I

    move-result v0

    .line 313
    iget v1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemCountInScreen:I

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mFirstVisibleItemPos:I

    .line 318
    iget v1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mFirstVisibleItemPos:I

    :goto_0
    if-ge v1, v0, :cond_3

    .line 319
    rem-int v2, v1, p2

    if-gez v2, :cond_1

    neg-int v3, p2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    add-int/2addr v2, p2

    :cond_1
    :goto_1
    add-int v3, v1, p2

    .line 329
    iget v4, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getScrollOffset()F

    move-result v4

    sub-float/2addr v3, v4

    .line 330
    iget-object v4, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-virtual {v4}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->getPathLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 331
    iget-object v4, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-virtual {v4, v3}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->getValue(F)Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 335
    :cond_2
    new-instance v5, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    invoke-direct {v5, v4, v2, v3}, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;-><init>(Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;IF)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private varargs insertElement(Z[F[F)[F
    .locals 1
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 957
    array-length p0, p2

    array-length v0, p3

    add-int/2addr p0, v0

    new-array p0, p0, [F

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 959
    array-length p1, p3

    invoke-static {p3, v0, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 960
    array-length p1, p3

    array-length p3, p2

    invoke-static {p2, v0, p0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 962
    :cond_0
    array-length p1, p2

    invoke-static {p2, v0, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 963
    array-length p1, p2

    array-length p2, p3

    invoke-static {p3, v0, p0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object p0
.end method

.method private isFinite(F)Z
    .locals 0

    .line 287
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLoopScrollMode()Z
    .locals 1

    .line 574
    iget p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScrollMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOverflowMode()Z
    .locals 1

    .line 581
    iget p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScrollMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSatisfiedLoopScroll()Z
    .locals 3

    .line 555
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->checkKeyframes()V

    .line 556
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-virtual {v0}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->getPathLength()I

    move-result v0

    .line 557
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getItemLength()I

    move-result v1

    .line 558
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isLoopScrollMode()Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int/2addr v1, v0

    iget p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    if-le v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSatisfiedLoopScroll(II)Z
    .locals 1

    .line 567
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isLoopScrollMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sub-int/2addr p2, p1

    iget p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    if-le p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
            "Ljava/util/List<",
            "Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    .line 202
    iget v1, v0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->index:I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 203
    invoke-virtual {p0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 204
    invoke-virtual {p0, v1, v2, v2}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->measureChild(Landroid/view/View;II)V

    .line 207
    iget v2, v0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->x:F

    float-to-int v2, v2

    invoke-virtual {p0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v4, v2, v3

    .line 208
    iget v2, v0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->y:F

    float-to-int v2, v2

    invoke-virtual {p0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v5, v2, v3

    .line 210
    invoke-virtual {p0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v2

    add-int v6, v4, v2

    invoke-virtual {p0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v2

    add-int v7, v5, v2

    move-object v2, p0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 211
    iget-boolean v2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isItemDirectionFixed:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->getChildAngle()F

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    .line 212
    iget-object v2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    if-eqz v2, :cond_0

    .line 213
    iget v0, v0, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->fraction:F

    invoke-direct {p0, v0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getScale(F)F

    move-result v0

    .line 214
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 215
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 4

    .line 416
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 417
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 418
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 419
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->removeView(Landroid/view/View;)V

    .line 420
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private relayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 184
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getNeedLayoutItems()Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    if-nez p2, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->onLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Ljava/util/List;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void

    .line 186
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method private solveTwoPointForm(FFF)F
    .locals 0

    sub-float/2addr p3, p1

    sub-float/2addr p2, p1

    div-float/2addr p3, p2

    return p3
.end method

.method private startValueAnimator(I)V
    .locals 4

    .line 810
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->stopFixingAnimation()V

    .line 812
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getDistance(I)I

    move-result v0

    const/4 v1, 0x2

    .line 814
    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    int-to-float v0, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mFixingAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mAnimator:Landroid/animation/ValueAnimator;

    .line 815
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$2;

    invoke-direct {v1, p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$2;-><init>(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 832
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$3;

    invoke-direct {v1, p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$3;-><init>(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 850
    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private stopFixingAnimation()V
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private updateOffsetX(F)V
    .locals 5

    .line 513
    iget-boolean v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isFlinging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isFlingEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 516
    :cond_0
    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    .line 517
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-virtual {v0}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->getPathLength()I

    move-result v0

    .line 518
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getItemLength()I

    move-result v1

    .line 519
    invoke-direct {p0, v0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isSatisfiedLoopScroll(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 520
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 521
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    rem-float/2addr p1, v1

    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    .line 523
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    goto :goto_0

    .line 524
    :cond_1
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_7

    .line 525
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    add-float/2addr p1, v1

    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    .line 526
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    goto :goto_0

    .line 529
    :cond_2
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isOverflowMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 530
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 531
    iput v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    goto :goto_0

    .line 532
    :cond_3
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    int-to-float v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 533
    iput v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    goto :goto_0

    :cond_4
    sub-int v2, v1, v0

    .line 537
    iget v3, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 538
    iput v4, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    goto :goto_0

    .line 539
    :cond_5
    iget v3, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    int-to-float v2, v2

    cmpl-float v3, v3, v2

    if-lez v3, :cond_7

    if-le v1, v0, :cond_6

    .line 541
    iput v2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    goto :goto_0

    .line 543
    :cond_6
    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    :cond_7
    :goto_0
    return-void
.end method

.method private updateOffsetY(F)V
    .locals 5

    .line 470
    iget-boolean v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isFlinging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isFlingEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 473
    :cond_0
    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    .line 474
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-virtual {v0}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->getPathLength()I

    move-result v0

    .line 475
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getItemLength()I

    move-result v1

    .line 476
    invoke-direct {p0, v0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isSatisfiedLoopScroll(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 477
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 478
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    rem-float/2addr p1, v1

    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    .line 480
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    goto :goto_0

    .line 481
    :cond_1
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_7

    .line 482
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    add-float/2addr p1, v1

    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    .line 483
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    goto :goto_0

    .line 486
    :cond_2
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isOverflowMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 487
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 488
    iput v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    goto :goto_0

    .line 489
    :cond_3
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    int-to-float v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 490
    iput v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    goto :goto_0

    :cond_4
    sub-int v2, v1, v0

    .line 494
    iget v3, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 495
    iput v4, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    goto :goto_0

    .line 496
    :cond_5
    iget v3, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    int-to-float v2, v2

    cmpl-float v3, v3, v2

    if-lez v3, :cond_7

    if-le v1, v0, :cond_6

    .line 498
    iput v2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    goto :goto_0

    .line 500
    :cond_6
    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 0

    .line 607
    iget p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOrientation:I

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

    .line 602
    iget p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 1014
    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 999
    invoke-virtual {p0, p2}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1000
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1001
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-virtual {p1}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->release()V

    .line 1002
    iput-object p2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    .line 1004
    :cond_0
    iput-object p2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    .line 1005
    iput-object p2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemAnimator:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    .line 1006
    iput-object p2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 1007
    iput-object p2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 1008
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->stopFixingAnimation()V

    .line 1009
    iput-object p2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1025
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->delayNotifyDataSetChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 1045
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->delayNotifyDataSetChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1030
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->delayNotifyDataSetChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1035
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->delayNotifyDataSetChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 1040
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->delayNotifyDataSetChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 116
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 122
    iput-object p2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 124
    iget-boolean v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isAnimatorInitialized:Z

    if-nez v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->initItemAnimator()V

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isAnimatorInitialized:Z

    .line 129
    :cond_1
    invoke-virtual {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->relayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    if-eqz v0, :cond_1

    .line 136
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 137
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_0

    .line 141
    iget-object p3, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-virtual {p3}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->getMaxX()I

    move-result p3

    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    :cond_0
    if-ne v1, v3, :cond_1

    .line 146
    iget-object p4, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-virtual {p4}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->getMaxY()I

    move-result p4

    invoke-static {p4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 149
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 702
    :goto_0
    iput-boolean v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isFlinging:Z

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 705
    :pswitch_0
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->stopFixingAnimation()V

    goto :goto_1

    .line 708
    :pswitch_1
    iget-boolean p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isAutoSelect:Z

    if-eqz p1, :cond_1

    .line 709
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->findClosestPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->smoothScrollToPosition(I)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 439
    iput-object p2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 440
    iput-object p3, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 441
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->checkKeyframes()V

    .line 442
    invoke-virtual {p0, p2}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 444
    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    int-to-float v1, p1

    .line 445
    invoke-direct {p0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->updateOffsetX(F)V

    .line 446
    invoke-direct {p0, p2, p3}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->relayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 448
    iget p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    cmpl-float p0, v0, p0

    if-nez p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public scrollToPosition(I)V
    .locals 2

    .line 728
    invoke-virtual {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    if-ge p1, v0, :cond_1

    .line 730
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->checkKeyframes()V

    .line 731
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getDistance(I)I

    move-result p1

    .line 732
    invoke-virtual {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 733
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->updateOffsetY(F)V

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 735
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->updateOffsetX(F)V

    .line 737
    :goto_0
    invoke-virtual {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 453
    iput-object p2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 454
    iput-object p3, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 455
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->checkKeyframes()V

    .line 456
    invoke-virtual {p0, p2}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 457
    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    int-to-float v1, p1

    .line 458
    invoke-direct {p0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->updateOffsetY(F)V

    .line 459
    invoke-direct {p0, p2, p3}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->relayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 461
    iget p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    cmpl-float p0, v0, p0

    if-nez p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public setAutoSelect(Z)V
    .locals 1

    .line 895
    iget-boolean v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isAutoSelect:Z

    if-eq v0, p1, :cond_0

    .line 896
    iput-boolean p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isAutoSelect:Z

    if-eqz p1, :cond_0

    .line 897
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 898
    invoke-virtual {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->onScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public setAutoSelectFraction(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 885
    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mAutoSelectFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 886
    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mAutoSelectFraction:F

    .line 887
    invoke-virtual {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setCacheCount(I)V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 697
    :cond_0
    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mCacheCount:I

    return-void
.end method

.method public setFixingAnimationDuration(J)V
    .locals 0

    .line 974
    iput-wide p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mFixingAnimationDuration:J

    return-void
.end method

.method public setFlingEnable(Z)V
    .locals 0

    .line 981
    iput-boolean p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isFlingEnable:Z

    return-void
.end method

.method public setItemDirectionFixed(Z)V
    .locals 1

    .line 650
    iget-boolean v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isItemDirectionFixed:Z

    if-eq v0, p1, :cond_0

    .line 651
    iput-boolean p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->isItemDirectionFixed:Z

    .line 652
    invoke-virtual {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setItemOffset(I)V
    .locals 1

    .line 636
    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    .line 637
    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    .line 639
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    if-eqz p1, :cond_0

    .line 640
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-virtual {p1}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->getPathLength()I

    move-result p1

    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemCountInScreen:I

    .line 641
    invoke-virtual {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public varargs setItemScaleRatio([F)V
    .locals 6

    .line 915
    array-length v0, p1

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 916
    new-array p1, v1, [F

    fill-array-data p1, :array_0

    .line 918
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_2

    aget v5, p1, v3

    cmpg-float v4, v5, v4

    if-ltz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 920
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array value can not be negative!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 923
    :cond_2
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    if-eq v0, p1, :cond_8

    .line 924
    array-length v0, p1

    if-lt v0, v1, :cond_7

    array-length v0, p1

    rem-int/2addr v0, v1

    if-nez v0, :cond_7

    .line 927
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    .line 928
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    const/4 v0, 0x1

    aget p1, p1, v0

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_3

    .line 929
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-direct {p0, v0, p1, v3}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->insertElement(Z[F[F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    .line 931
    :cond_3
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    iget-object v3, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    array-length v3, v3

    sub-int/2addr v3, v0

    aget p1, p1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_4

    .line 932
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-direct {p0, v2, p1, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->insertElement(Z[F[F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    .line 934
    :cond_4
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    aget p1, p1, v0

    .line 936
    :goto_1
    iget-object v1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 937
    iget-object v1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScaleRatio:[F

    aget v1, v1, v0

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_5

    add-int/lit8 v0, v0, 0x2

    move p1, v1

    goto :goto_1

    .line 939
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect array value! position must be from small to large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 944
    :cond_6
    invoke-virtual {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->requestLayout()V

    goto :goto_2

    .line 925
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array length no match!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setOnItemSelectedListener(Lcom/wuyr/pathlayoutmanager/PathLayoutManager$OnItemSelectedListener;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemSelectedListener:Lcom/wuyr/pathlayoutmanager/PathLayoutManager$OnItemSelectedListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 678
    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 679
    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 681
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    .line 682
    iput v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    goto :goto_0

    .line 684
    :cond_0
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetY:F

    .line 685
    iput v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mOffsetX:F

    :cond_1
    :goto_0
    return-void
.end method

.method public setScrollMode(I)V
    .locals 1

    .line 664
    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScrollMode:I

    if-eq p1, v0, :cond_0

    .line 665
    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mScrollMode:I

    .line 666
    invoke-virtual {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    if-eqz v0, :cond_0

    .line 798
    invoke-direct {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->checkKeyframes()V

    .line 799
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->startValueAnimator(I)V

    :cond_0
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 788
    invoke-virtual {p0, p3}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->smoothScrollToPosition(I)V

    return-void
.end method

.method public updatePath(Landroid/graphics/Path;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 615
    new-instance v0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-direct {v0, p1}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    .line 616
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    if-eqz p1, :cond_0

    .line 625
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mKeyframes:Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;

    invoke-virtual {p1}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->getPathLength()I

    move-result p1

    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemOffset:I

    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->mItemCountInScreen:I

    goto :goto_0

    .line 617
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "itemOffset must be > 0 !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 627
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->requestLayout()V

    return-void
.end method
