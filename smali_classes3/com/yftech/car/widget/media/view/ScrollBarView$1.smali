.class Lcom/yftech/car/widget/media/view/ScrollBarView$1;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "ScrollBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/view/ScrollBarView;->getAdapterDataObserver()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/view/ScrollBarView;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$1;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$1;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$000(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 216
    iget-object v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$1;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {v1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$100(Lcom/yftech/car/widget/media/view/ScrollBarView;)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$1;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$1;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setVisibility(I)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$1;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v1, v0, :cond_1

    .line 222
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$1;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
