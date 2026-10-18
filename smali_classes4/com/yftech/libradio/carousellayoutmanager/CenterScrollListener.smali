.class public Lcom/yftech/libradio/carousellayoutmanager/CenterScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CenterScrollListener.java"


# instance fields
.field private mAutoSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CenterScrollListener;->mAutoSet:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 18
    instance-of v1, v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 19
    iput-boolean v2, p0, Lcom/yftech/libradio/carousellayoutmanager/CenterScrollListener;->mAutoSet:Z

    return-void

    .line 23
    :cond_0
    check-cast v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    .line 24
    iget-boolean v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CenterScrollListener;->mAutoSet:Z

    const/4 v3, 0x0

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    .line 26
    invoke-virtual {v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getOffsetCenterView()I

    move-result v1

    .line 27
    invoke-virtual {v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-virtual {p1, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1, v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 32
    :goto_0
    iput-boolean v2, p0, Lcom/yftech/libradio/carousellayoutmanager/CenterScrollListener;->mAutoSet:Z

    :cond_2
    if-eq v2, p2, :cond_3

    const/4 p1, 0x2

    if-ne p1, p2, :cond_4

    .line 36
    :cond_3
    iput-boolean v3, p0, Lcom/yftech/libradio/carousellayoutmanager/CenterScrollListener;->mAutoSet:Z

    :cond_4
    return-void
.end method
