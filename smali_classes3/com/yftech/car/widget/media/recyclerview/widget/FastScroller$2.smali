.class Lcom/yftech/car/widget/media/recyclerview/widget/FastScroller$2;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/recyclerview/widget/FastScroller;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/FastScroller;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/FastScroller$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/FastScroller;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/FastScroller$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/FastScroller;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    .line 134
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 133
    invoke-virtual {p0, p2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/FastScroller;->updateScrollPosition(II)V

    return-void
.end method
