.class Lcom/media/common/util/FastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/util/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/util/FastScroller;


# direct methods
.method constructor <init>(Lcom/media/common/util/FastScroller;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/media/common/util/FastScroller$2;->this$0:Lcom/media/common/util/FastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/media/common/util/FastScroller$2;->this$0:Lcom/media/common/util/FastScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    .line 131
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 130
    invoke-virtual {p0, p2, p1}, Lcom/media/common/util/FastScroller;->updateScrollPosition(II)V

    return-void
.end method
