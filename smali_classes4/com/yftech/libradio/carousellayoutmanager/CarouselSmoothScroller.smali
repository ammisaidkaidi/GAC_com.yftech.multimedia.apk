.class public Lcom/yftech/libradio/carousellayoutmanager/CarouselSmoothScroller;
.super Ljava/lang/Object;
.source "CarouselSmoothScroller.java"


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_1

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    if-ge p2, p0, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "position can\'t be great then adapter items count. position is : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "position can\'t be less then 0. position is : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public calculateDxToMakeVisible(Landroid/view/View;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;)I
    .locals 0
    .param p2    # Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-virtual {p2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->canScrollHorizontally()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 44
    :cond_0
    invoke-virtual {p2, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getOffsetForCurrentView(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;)I
    .locals 0
    .param p2    # Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-virtual {p2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->canScrollVertically()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 36
    :cond_0
    invoke-virtual {p2, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getOffsetForCurrentView(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public computeScrollVectorForPosition(ILcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;)Landroid/graphics/PointF;
    .locals 0
    .param p2    # Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-virtual {p2, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
