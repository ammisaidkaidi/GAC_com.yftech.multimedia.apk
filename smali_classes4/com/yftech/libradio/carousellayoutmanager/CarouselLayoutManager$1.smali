.class Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;Landroid/content/Context;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$1;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 0

    .line 231
    iget-object p2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$1;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    invoke-virtual {p2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->canScrollHorizontally()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 234
    :cond_0
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$1;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getOffsetForCurrentView(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 0

    .line 222
    iget-object p2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$1;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    invoke-virtual {p2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->canScrollVertically()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$1;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getOffsetForCurrentView(Landroid/view/View;)I

    move-result p0

    return p0
.end method
