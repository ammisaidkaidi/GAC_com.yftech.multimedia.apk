.class public Lcom/yftech/car/widget/media/view/ScrollBarView;
.super Landroid/view/View;
.source "ScrollBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/view/ScrollBarView$OnScrollBarViewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollBarView"


# instance fields
.field private bacHeight:I

.field private bacWidth:I

.field private barHeight:I

.field private barWidth:I

.field private finishWidth:I

.field private isDown:Z

.field private listener:Lcom/yftech/car/widget/media/view/ScrollBarView$OnScrollBarViewListener;

.field private mAdapterDataObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mChildDrawingOrderCallback:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

.field private mGridLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

.field private mGroupHeight:I

.field private mItemCountOffset:I

.field private mItemHeight:I

.field private mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

.field private mLinearLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

.field private mMaxOffset:I

.field private mMaxProgress:I

.field private mOnScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mProgress:I

.field private mRecyclerId:I

.field private mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

.field private mScrollArea:I

.field private mScrollBarHeightSize:I

.field private mScrollBarHideRowSize:I

.field private mShowItemCount:I

.field private pressedDrawable:Landroid/graphics/drawable/Drawable;

.field private startWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 36
    iput p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mMaxProgress:I

    .line 37
    iput p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mShowItemCount:I

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mMaxOffset:I

    .line 47
    iput p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mItemCountOffset:I

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x5

    .line 36
    iput v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mMaxProgress:I

    .line 37
    iput v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mShowItemCount:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mMaxOffset:I

    .line 47
    iput v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mItemCountOffset:I

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerId:I

    .line 69
    sget-object v2, Lcom/yftech/car/widget/media/R$styleable;->ScrollBarView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 71
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->ScrollBarView_barColorSources:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->ScrollBarView_barWidth:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->barWidth:I

    .line 75
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->ScrollBarView_barHeight:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->barHeight:I

    .line 77
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->ScrollBarView_maxOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mMaxOffset:I

    .line 79
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->ScrollBarView_itemCountOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mItemCountOffset:I

    .line 81
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->ScrollBarView_mRecyclerViewId:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerId:I

    .line 84
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->ScrollBarView_scroll_bar_hide_row_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mScrollBarHideRowSize:I

    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/view/ScrollBarView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mItemCountOffset:I

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/view/ScrollBarView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mItemHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/view/ScrollBarView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->updatePosition()V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/view/ScrollBarView;)I
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->getMaxProgress()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method static synthetic access$502(Lcom/yftech/car/widget/media/view/ScrollBarView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mGridLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$602(Lcom/yftech/car/widget/media/view/ScrollBarView;Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mGridLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mAdapterDataObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-object p0
.end method

.method static synthetic access$702(Lcom/yftech/car/widget/media/view/ScrollBarView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mAdapterDataObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-object p1
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->getAdapterDataObserver()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    move-result-object p0

    return-object p0
.end method

.method private getAdapterDataObserver()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;
    .locals 1

    .line 210
    new-instance v0, Lcom/yftech/car/widget/media/view/ScrollBarView$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/view/ScrollBarView$1;-><init>(Lcom/yftech/car/widget/media/view/ScrollBarView;)V

    return-object v0
.end method

.method private getChildDrawingOrderCallback()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;
    .locals 1

    .line 256
    new-instance v0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/view/ScrollBarView$3;-><init>(Lcom/yftech/car/widget/media/view/ScrollBarView;)V

    return-object v0
.end method

.method private getMaxProgress()I
    .locals 1

    .line 317
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mMaxProgress:I

    iget p0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mShowItemCount:I

    add-int/2addr v0, p0

    return v0
.end method

.method private getOnScrollListener()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 1

    .line 231
    new-instance v0, Lcom/yftech/car/widget/media/view/ScrollBarView$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/view/ScrollBarView$2;-><init>(Lcom/yftech/car/widget/media/view/ScrollBarView;)V

    return-object v0
.end method

.method private initRecyclerView()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mOnScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->getOnScrollListener()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mOnScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 170
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mOnScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->addOnScrollListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 172
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->getChildDrawingOrderCallback()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mChildDrawingOrderCallback:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 173
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mChildDrawingOrderCallback:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setChildDrawingOrderCallback(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->updatePosition()V

    :cond_1
    return-void
.end method

.method private releaseRecycler()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mOnScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mOnScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->removeOnScrollListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 361
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mAdapterDataObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mAdapterDataObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 366
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mAdapterDataObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 370
    iput-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mOnScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 371
    iput-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mChildDrawingOrderCallback:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    :cond_1
    return-void
.end method

.method private setBarWidthStartFinishPosition()V
    .locals 2

    .line 401
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->barWidth:I

    if-lez v0, :cond_0

    .line 402
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacWidth:I

    iget v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->barWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->startWidth:I

    .line 403
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->startWidth:I

    iget v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->barWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->finishWidth:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 405
    iput v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->startWidth:I

    .line 406
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacWidth:I

    iput v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->finishWidth:I

    :goto_0
    return-void
.end method

.method private update()V
    .locals 5

    .line 444
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->isDown:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 445
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mMaxProgress:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 446
    iput v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mMaxProgress:I

    .line 447
    iget-object v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->startWidth:I

    iget v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->finishWidth:I

    iget v4, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacHeight:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 449
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacHeight:I

    iget v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mShowItemCount:I

    div-int/2addr v0, v1

    .line 451
    iget v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacHeight:I

    iget v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mMaxProgress:I

    mul-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mScrollBarHeightSize:I

    .line 453
    iget v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->barHeight:I

    if-lez v1, :cond_1

    .line 454
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mScrollBarHeightSize:I

    iget v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->barHeight:I

    if-ge v0, v1, :cond_2

    .line 455
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->barHeight:I

    iput v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mScrollBarHeightSize:I

    goto :goto_0

    .line 458
    :cond_1
    iget v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mScrollBarHeightSize:I

    div-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_2

    .line 459
    iput v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mScrollBarHeightSize:I

    .line 463
    :cond_2
    :goto_0
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacHeight:I

    iget v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mScrollBarHeightSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mScrollArea:I

    .line 465
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mScrollArea:I

    int-to-double v0, v0

    iget v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mMaxProgress:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 467
    iget v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mProgress:I

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v0, v2

    .line 469
    iget v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mScrollBarHeightSize:I

    add-int/2addr v1, v0

    .line 471
    iget v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacHeight:I

    if-le v1, v2, :cond_3

    .line 472
    iget v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacHeight:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 473
    iget v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacHeight:I

    .line 475
    :cond_3
    iget-object v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->startWidth:I

    iget v4, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->finishWidth:I

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 477
    :goto_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->invalidate()V

    :cond_4
    return-void
.end method

.method private updatePosition()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLinearLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLinearLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, v1, :cond_1

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLinearLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLinearLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_5

    .line 188
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLinearLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLinearLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    instance-of v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_4

    .line 193
    iget-object v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    iput-object v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mGridLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    .line 194
    iget-object v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mGridLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    div-int v1, v0, v1

    .line 195
    iget-object v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mGridLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    rem-int/2addr v0, v2

    if-lez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 198
    :cond_3
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setProgress(I)V

    goto :goto_0

    .line 200
    :cond_4
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setProgress(I)V

    goto :goto_0

    :cond_5
    const-string p0, "ScrollBarView"

    const-string/jumbo v0, "updatePosition: linearLayoutManager is null"

    .line 203
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 345
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 346
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->releaseRecycler()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 545
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 322
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 324
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacHeight:I

    .line 325
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacWidth:I

    const/4 v0, 0x4

    .line 326
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setVisibility(I)V

    const-string v0, "ScrollBarView"

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate: bacWidth=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",bacWidth=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setBarWidthStartFinishPosition()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 125
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 127
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 128
    iget p2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerId:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 129
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    .line 130
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerId:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 131
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 132
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 133
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 134
    check-cast p2, Landroid/view/ViewGroup;

    .line 135
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerId:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 136
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    .line 144
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-nez p2, :cond_4

    .line 145
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    .line 146
    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    .line 148
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 150
    instance-of v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    .line 151
    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    const-string p1, "ScrollBarView"

    const-string p2, "onMeasure: parent is null"

    .line 157
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->initRecyclerView()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 118
    iput p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacWidth:I

    .line 119
    iput p2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacHeight:I

    .line 120
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setBarWidthStartFinishPosition()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 483
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mMaxProgress:I

    const/4 v1, 0x1

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 533
    :pswitch_0
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->isDown:Z

    .line 534
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->update()V

    goto/16 :goto_0

    .line 487
    :pswitch_1
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->isDown:Z

    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 489
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mScrollBarHeightSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 493
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mScrollBarHeightSize:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    .line 495
    iget v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacHeight:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 496
    iget v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacHeight:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    sub-float/2addr p1, v0

    .line 497
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->bacHeight:I

    int-to-float v0, v0

    .line 500
    :cond_1
    iget-object v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLinearLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLinearLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v3, v4, :cond_3

    .line 501
    :cond_2
    iget-object v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v3, v3, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_3

    .line 502
    iget-object v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v3, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    iput-object v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLinearLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    .line 505
    :cond_3
    iget-object v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLinearLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->listener:Lcom/yftech/car/widget/media/view/ScrollBarView$OnScrollBarViewListener;

    if-eqz v3, :cond_9

    .line 506
    :cond_4
    iget v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mMaxProgress:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mScrollArea:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 508
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v4, v4, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    if-eqz v4, :cond_6

    .line 509
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mGridLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    if-nez v4, :cond_5

    .line 510
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v4, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    iput-object v4, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mGridLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    .line 512
    :cond_5
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mGridLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v4}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v4

    mul-int/2addr v3, v4

    .line 515
    :cond_6
    iget v4, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mProgress:I

    if-eq v3, v4, :cond_9

    .line 516
    iput v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mProgress:I

    const-string v4, "ScrollBarView"

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent: position=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLinearLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eqz v4, :cond_7

    .line 520
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mLinearLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v3, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 522
    :cond_7
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->listener:Lcom/yftech/car/widget/media/view/ScrollBarView$OnScrollBarViewListener;

    if-eqz v4, :cond_9

    .line 523
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->listener:Lcom/yftech/car/widget/media/view/ScrollBarView$OnScrollBarViewListener;

    iget v5, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mMaxProgress:I

    if-lt v3, v5, :cond_8

    move v2, v1

    :cond_8
    invoke-interface {v4, v3, v2}, Lcom/yftech/car/widget/media/view/ScrollBarView$OnScrollBarViewListener;->onScroll(IZ)V

    .line 528
    :cond_9
    iget-object v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->startWidth:I

    float-to-int p1, p1

    iget v4, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->finishWidth:I

    float-to-int v0, v0

    invoke-virtual {v2, v3, p1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 530
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->invalidate()V

    :cond_a
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 340
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    .line 335
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setBarColorSources(I)V
    .locals 2

    .line 103
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBarDrawableSources(I)V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBarWidth(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->barWidth:I

    .line 112
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setBarWidthStartFinishPosition()V

    return-void
.end method

.method public setGroupHeightItemHeight(II)V
    .locals 3

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-le p1, p2, :cond_1

    .line 382
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mGroupHeight:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mItemHeight:I

    if-eq v0, p2, :cond_2

    :cond_0
    const-string v0, "ScrollBarView"

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGroupHeightItemHeight: groupHeight=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",itemHeight=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iput p2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mItemHeight:I

    .line 385
    iput p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mGroupHeight:I

    .line 386
    div-int/2addr p1, p2

    iput p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mShowItemCount:I

    .line 387
    iget p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mShowItemCount:I

    iget p2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mMaxOffset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mShowItemCount:I

    .line 392
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->update()V

    goto :goto_0

    :cond_1
    const-string p0, "ScrollBarView"

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGroupHeightItemHeight: groupHeight=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",itemHeight=="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 1

    .line 415
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mShowItemCount:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mMaxProgress:I

    .line 416
    iget v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mScrollBarHideRowSize:I

    if-le p1, v0, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->update()V

    const/4 p1, 0x0

    .line 418
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 420
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOnScrollBarViewListener(Lcom/yftech/car/widget/media/view/ScrollBarView$OnScrollBarViewListener;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->listener:Lcom/yftech/car/widget/media/view/ScrollBarView$OnScrollBarViewListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 429
    iput p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mProgress:I

    .line 430
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->update()V

    return-void
.end method

.method public setRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->releaseRecycler()V

    .line 354
    :cond_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 355
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->initRecyclerView()V

    return-void
.end method

.method public setShowItemCount(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 439
    iput p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView;->mShowItemCount:I

    .line 440
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->update()V

    return-void
.end method
