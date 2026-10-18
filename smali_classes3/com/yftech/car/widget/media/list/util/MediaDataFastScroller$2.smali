.class Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller$2;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MediaDataFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller$2;->this$0:Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller$2;->this$0:Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    .line 132
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 131
    invoke-virtual {p0, p2, p1}, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;->updateScrollPosition(II)V

    return-void
.end method
