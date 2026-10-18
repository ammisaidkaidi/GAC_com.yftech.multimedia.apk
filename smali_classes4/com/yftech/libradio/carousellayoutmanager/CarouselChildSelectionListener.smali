.class public abstract Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;
.super Ljava/lang/Object;
.source "CarouselChildSelectionListener.java"


# instance fields
.field private final mCarouselLayoutManager:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$1;-><init>(Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;)V

    iput-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 30
    iput-object p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    iput-object p2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->mCarouselLayoutManager:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    .line 33
    iget-object p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$2;

    invoke-direct {p2, p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$2;-><init>(Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;)Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->mCarouselLayoutManager:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method protected abstract onBackItemClicked(Landroidx/recyclerview/widget/RecyclerView;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected abstract onCenterItemClicked(Landroidx/recyclerview/widget/RecyclerView;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
