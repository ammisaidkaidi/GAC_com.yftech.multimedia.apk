.class Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$1;
.super Ljava/lang/Object;
.source "CarouselChildSelectionListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-static {v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->access$000(Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-static {v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;)Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getCenterItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;

    iget-object v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-static {v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->access$000(Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-static {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;)Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->onCenterItemClicked(Landroidx/recyclerview/widget/RecyclerView;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;

    iget-object v1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-static {v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->access$000(Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-static {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;)Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->onBackItemClicked(Landroidx/recyclerview/widget/RecyclerView;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V

    :goto_0
    return-void
.end method
